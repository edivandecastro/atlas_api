module Api
  module V1
    class Company < ApplicationRecord
      belongs_to :country
    end
  end
end
