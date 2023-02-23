module Api
  module V1
    class LocationGroupSerializer < ActiveModel::Serializer
      attributes :id, :name
    end
  end
end
