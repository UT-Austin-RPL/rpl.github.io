# frozen_string_literal: true

require "jekyll"
require "nokogiri"
require "time"
require_relative "../_plugins/publication_sort"

def assert(condition, message)
  raise message unless condition
end

def paper(title, date, path)
  { "title" => title, "date" => Time.iso8601(date), "path" => path }
end

filter = Object.new.extend(RPL::PublicationFilters)
fixtures = [
  paper("Older", "2026-11-08T00:00:00Z", "older.md"),
  paper("Zulu", "2026-11-09T00:00:00Z", "zulu.md"),
  paper("Beta", "2026-11-09T23:00:00Z", "beta.md"),
  paper("alpha", "2026-11-09T08:00:00Z", "alpha-z.md"),
  paper("ALPHA", "2026-11-09T14:00:00Z", "alpha-a.md"),
  paper("Newest", "2026-11-10T00:00:00Z", "newest.md"),
]
expected_paths = %w[newest.md alpha-a.md alpha-z.md beta.md zulu.md older.md]
original_paths = fixtures.map { |entry| entry.fetch("path") }

assert(filter.sort_publications([]).empty?, "Empty lists must remain empty")
assert(filter.sort_publications(nil).empty?, "Missing categories must return an empty list")
30.times do |seed|
  shuffled = fixtures.shuffle(random: Random.new(seed))
  actual = filter.sort_publications(shuffled).map { |entry| entry.fetch("path") }
  assert(actual == expected_paths, "Sort order depends on input order (seed #{seed})")
end
filter.sort_publications(fixtures)
assert(fixtures.map { |entry| entry.fetch("path") } == original_paths, "Sorting mutated the input")

template = Liquid::Template.parse(
  '{% assign ordered = papers | sort_publications %}' \
  '{% for paper in ordered %}{{ paper.path }}|{% endfor %}'
)
rendered = template.render!({ "papers" => fixtures }, strict_filters: true)
assert(rendered == expected_paths.join("|") + "|", "Liquid did not apply the sorting filter")

root = File.expand_path("..", __dir__)
site = Jekyll::Site.new(Jekyll.configuration("source" => root, "quiet" => true))
site.reset
site.read
publications = site.categories.fetch("publications")
expected = filter.sort_publications(publications)
ego_path = "publications/_posts/2026-02-18-zheng-arxiv26-egoscale.md"
ego = publications.find { |entry| entry.relative_path == ego_path }
assert(ego, "EgoScale is missing")
assert(ego.data.fetch("date").strftime("%Y-%m-%d") == "2026-11-10", "EgoScale has the wrong date")
assert(ego.url == "/publications/2026/02/18/zheng-arxiv26-egoscale/", "EgoScale URL changed")
assert(ego.data.fetch("pub_info_date") == "November 2026", "EgoScale conference label changed")
assert(filter.sort_publications([ego]).first.equal?(ego), "Sorting replaced the publication object")
drop_order = filter.sort_publications(publications.map(&:to_liquid))
assert(
  drop_order.map { |entry| entry["path"] } == expected.map(&:relative_path),
  "Liquid drops and Jekyll documents have different sort orders"
)

page = File.join(root, "_site/publications/index.html")
assert(File.file?(page), "Build the site before running this check")
document = Nokogiri::HTML(File.read(page))
actual_titles = document.css(".pub-title").map { |node| node.text.strip }
expected_titles = expected.map do |entry|
  Nokogiri::HTML.fragment(entry.data.fetch("title")).text.strip
end
assert(actual_titles == expected_titles, "Generated Publications page has the wrong order or missing entries")
puts "Publication sorting passed: date, case-insensitive title, path, and 30 shuffled inputs."
puts "Verified all #{expected.size} rendered publications and EgoScale metadata."
