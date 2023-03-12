class Api::V1::ApplicationController < ApplicationController

  private

  def meta_attributes(collection, extra_meta = {})
    {
      pagination: {
        current_page: collection.current_page,
        next_page: collection.next_page,
        prev_page: collection.prev_page,
        total_pages: collection.total_pages,
        total_count: collection.first.class.count
      }
    }.merge(extra_meta)
  end
end
