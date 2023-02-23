class Api::V1::CompaniesController < ApplicationController
  def index
    companies = Api::V1::Company.all
    render json: companies, root: :companies
  end
end
