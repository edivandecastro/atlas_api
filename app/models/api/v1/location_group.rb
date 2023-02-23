module Api
  module V1
    class LocationGroup < ApplicationRecord
      has_many :locations
    end
  end
end
