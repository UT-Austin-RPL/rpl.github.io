# frozen_string_literal: true

require "addressable/uri"
require_relative "site_url_scope"

origin = Addressable::URI.parse("https://ut-austin-rpl.github.io")
projects = %w[OKAMI sirius]
cases = {
  "https://ut-austin-rpl.github.io/OKAMI" => true,
  "https://ut-austin-rpl.github.io/OKAMI/?view=demo#video" => true,
  "//ut-austin-rpl.github.io/sirius/assets/demo.mp4" => true,
  "/OKAMI/" => false,
  "../OKAMI/" => false,
  "https://ut-austin-rpl.github.io/OKAMI-typo/" => false,
  "https://ut-austin-rpl.github.io/OKAMI/../publications/missing/" => false,
  "https://ut-austin-rpl.github.io" => false,
  "https://ut-austin-rpl.github.io/publications/missing/" => false,
  "https://ut-austin-rpl.github.io/rpl.github.io/people/" => false,
  "https://ut-austin-rpl.github.io/css/missing.css" => false,
  "https://ut-austin-rpl.github.io/" => false,
  "https://example.com/OKAMI/" => false,
}
cases.each do |value, expected|
  target = Addressable::URI.join(origin.to_s + "/", value)
  actual = SiteURLScope.external_project?(value, target, origin, "", projects)
  raise "Incorrect project classification: #{value}" unless actual == expected
end
value = "https://ut-austin-rpl.github.io/OKAMI/"
target = Addressable::URI.parse(value)
raise "Project-subpath handling changed" if SiteURLScope.external_project?(value, target, origin, "/rpl.github.io", projects)
custom = Addressable::URI.parse("https://rpl.example.com")
raise "Custom domain must validate its own paths" if SiteURLScope.external_project?("https://rpl.example.com/OKAMI/", Addressable::URI.parse("https://rpl.example.com/OKAMI/"), custom, "", projects)
puts "Site URL scope passed: sibling projects, main-site paths, and custom domains."
