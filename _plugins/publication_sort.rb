# frozen_string_literal: true

module RPL
  module PublicationFilters
    # Use a single composite key so ties never depend on sort stability.
    def sort_publications(publications)
      Array(publications).sort_by do |publication|
        fields = publication.respond_to?(:to_liquid) ? publication.to_liquid : publication
        [
          -fields["date"].strftime("%Y%m%d").to_i,
          fields["title"].to_s.downcase,
          fields["path"].to_s,
        ]
      end
    end
  end
end

Liquid::Template.register_filter(RPL::PublicationFilters)
