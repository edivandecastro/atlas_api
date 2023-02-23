module Api
  module V1
    class Location < ApplicationRecord
      belongs_to :location_group
      belongs_to :company
    end
  end
end
