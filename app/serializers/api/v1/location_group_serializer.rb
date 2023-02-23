module Api
  module V1
    class LocationGroupSerializer < ActiveModel::Serializer
      attributes :id, :name

      has_many :locations
    end
  end
end
