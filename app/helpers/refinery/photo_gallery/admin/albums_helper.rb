module Refinery
  module PhotoGallery
    module Admin
      module AlbumsHelper
        def pages_options
          Refinery::Page::Translation.all.sort_by(&:title).map{ |page| [page.title, page.refinery_page_id] }
        end

        def gallery_page_option
          Refinery::Page::Translation.all.detect{ |page| page.title == "Galeria" }.try(:refinery_page_id)
        end
      end
    end
  end
end

