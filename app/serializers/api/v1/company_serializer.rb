module Api
  module V1
    class CompanySerializer < ActiveModel::Serializer
      attributes :id, :name, :fiscal_document, :owner, :type_document

      belongs_to :country
    end
  end
end
