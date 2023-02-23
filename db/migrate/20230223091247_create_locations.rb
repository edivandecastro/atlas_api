class CreateLocations < ActiveRecord::Migration[6.0]
  def change
    create_table :locations do |t|
      t.string :name
      t.string :project_name
      t.string :phone_number
      t.string :fiscal_company_number
      t.string :social_reason
      t.string :cost_center
      t.string :acronym
      t.date :openning_date
      t.integer :erp_id
      t.string :email
      t.integer :system_ticket
      t.string :acronym_origin
      t.integer :unified_location_id
      t.references :location_group, null: false, foreign_key: true
      t.references :company, null: false, foreign_key: true

      t.timestamps
    end
  end
end
