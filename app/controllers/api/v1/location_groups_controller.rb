class Api::V1::LocationGroupsController < ApplicationController
  def index
    location_groups = Api::V1::LocationGroup.all
    render json: location_groups, root: :location_groups
  end
end
