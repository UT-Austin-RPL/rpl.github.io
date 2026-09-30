# frozen_string_literal: true
require "yaml"
require "json"
require "find"
require "pathname"
require "nokogiri"
require "addressable/uri"
require_relative "site_url_scope"

root = File.expand_path("../_site", __dir__)
config = YAML.safe_load(File.read(File.expand_path("../_config.yml", __dir__)), aliases: true)
origin = Addressable::URI.parse(ENV.fetch("SITE_URL", config.fetch("url")))
base = ENV.fetch("SITE_BASEURL", config.fetch("baseurl", "")).sub(%r{/+$}, "")
errors = []
projects = YAML.safe_load(File.read(File.expand_path("../_data/github_pages_projects.yml", __dir__)))
if base.empty?
  projects.each do |project|
    errors << "Main-site path conflicts with a separate project: /#{project}/" if File.exist?(File.join(root, project))
  end
end
files = []
Find.find(root) do |path|
  errors << "Unsupported symlink: #{path}" if File.symlink?(path)
  files << path if File.file?(path)
end
size = files.sum { |file| File.size(file) }
legacy_media = YAML.safe_load(File.read(File.expand_path("../_data/legacy_media_paths.yml", __dir__)))
legacy_media.each do |path|
  errors << "Missing legacy media path: #{path}" unless File.file?(File.join(root, path.delete_prefix("/")))
end
limit = Integer(ENV.fetch("MAX_SITE_BYTES", "950000000"))
errors << "Published site is #{size} bytes (budget #{limit})" if size >= limit
%w[cs343_spring2021 cs343_spring2022 cs343_spring2023 cs343h_fall2024
   todo_list scripts_private scripts docs .gitmodules CNAME
   deploy-utcs.sh deploy-utcs_zic_mac.sh deploy-utcs_zic_linux.sh].each do |entry|
  errors << "Out-of-scope build entry: #{entry}" if File.exist?(File.join(root, entry))
end

check_url = lambda do |value, page_url, source|
  next if value.nil? || value.empty? || value.start_with?("#")
  begin
    target = Addressable::URI.join(page_url, value)
    next unless %w[http https].include?(target.scheme)
    next unless target.host == origin.host
    next if SiteURLScope.external_project?(value, target, origin, base, projects)
    path = Addressable::URI.unencode_component(target.normalize.path)
    # Other projects at this GitHub organization are external to this site.
    # At the organization root, only explicitly listed absolute project links
    # are external. Relative links and unknown main-site paths must exist.
    inside = base.empty? || path == base || path.start_with?(base + "/")
    unless inside
      errors << "#{source}: link escapes baseurl: #{value}" unless value.match?(%r{\A(?:https?:)?//})
      next
    end
    rel = path.delete_prefix(base).sub(%r{\A/}, "")
    candidate = File.expand_path(rel, root)
    unless candidate == root || candidate.start_with?(root + "/")
      errors << "#{source}: invalid path: #{value}"
      next
    end
    exists = File.file?(candidate) || File.file?(File.join(candidate, "index.html"))
    errors << "#{source}: missing #{value}" unless exists
  rescue Addressable::URI::InvalidURIError => error
    errors << "#{source}: invalid URL #{value}: #{error.message}"
  end
end

html_files = files.select { |file| file.end_with?(".html") }
html_files.each do |file|
  rel = Pathname.new(file).relative_path_from(Pathname.new(root)).to_s
  page_path = "/" + rel.sub(%r{index\.html$}, "")
  page_url = origin.to_s.sub(%r{/$}, "") + base + page_path
  document = Nokogiri::HTML(File.read(file))
  document.css("[href], [src]").each do |element|
    %w[href src].each { |attribute| check_url.call(element[attribute], page_url, rel) }
  end
  document.css('link[rel="canonical"], meta[property="og:url"], meta[name="twitter:url"]').each do |element|
    actual = element["href"] || element["content"]
    errors << "#{rel}: wrong canonical/social URL #{actual}" unless actual == page_url
  end
end

index = JSON.parse(File.read(File.join(root, "search.json")))
index.each { |paper| check_url.call(paper.fetch("url"), origin.to_s + base + "/", "search.json") }
manifest = JSON.parse(File.read(File.join(root, "site.webmanifest")))
manifest.fetch("icons").each { |icon| check_url.call(icon.fetch("src"), origin.to_s + base + "/", "site.webmanifest") }
%w[feed.xml sitemap.xml].each do |name|
  document = Nokogiri::XML(File.read(File.join(root, name))) { |options| options.strict }
  document.remove_namespaces!
  document.xpath("//loc | //channel/link | //item/link | //guid | //link/@href").each do |node|
    value = node.content
    check_url.call(value, origin.to_s + base + "/", name)
  end
end

errors.uniq!
if errors.any?
  warn errors.first(40).join("\n")
  abort "#{errors.length} validation error(s)"
end
puts "Validated #{html_files.length} HTML pages and #{index.length} publication search entries."
puts "Published size: #{size} bytes (#{(size / 1_000_000.0).round(1)} MB); budget: #{limit} bytes."
puts "No course archives, deployment scripts, or scratch files in the published site."
puts "Preserved all #{legacy_media.size} legacy media article and image paths."
