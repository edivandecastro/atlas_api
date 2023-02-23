class Api::V1::CountriesController < ApplicationController
  def index
    countries = Api::V1::Country.all
    render json: countries, root: :countries
  end
end
