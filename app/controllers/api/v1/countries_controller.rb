class Api::V1::CountriesController < ApplicationController
  def index
    countries = Api::V1::Country.all
    render json: countries, root: :countries
  end

  def create
    country = Api::V1::Country.new(country_params)
    country.save
    render json: country, root: :country
  end

  private

  def country_params
    params.require(:country).permit(:id, :name, :locale, :acronym,)
  end
end
