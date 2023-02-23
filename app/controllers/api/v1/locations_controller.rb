class Api::V1::LocationsController < ApplicationController
  def index
    location = Api::V1::Location.all
    render json: location, root: :locations
  end
end
