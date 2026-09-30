# frozen_string_literal: true

module SiteURLScope
  def self.external_project?(value, target, origin, base, projects)
    return false unless base.empty? && origin.host.end_with?(".github.io")
    return false unless target.host == origin.host && value.match?(%r{\A(?:https?:)?//})

    path = target.normalize.path.to_s
    projects.any? { |project| path == "/#{project}" || path.start_with?("/#{project}/") }
  end
end
