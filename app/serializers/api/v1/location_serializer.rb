module Api
  module V1
    class LocationSerializer < ActiveModel::Serializer
      attributes :id,
                 :name,
                 :project_name,
                 :phone_number,
                 :fiscal_company_number,
                 :social_reason,
                 :cost_center,
                 :acronym,
                 :openning_date,
                 :erp_id, :email,
                 :system_ticket,
                 :acronym_origin,
                 :unified_location_id

      belongs_to :location_group
      belongs_to :company
    end
  end
end
