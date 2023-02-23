class CreateCompanies < ActiveRecord::Migration[6.0]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :fiscal_document
      t.boolean :owner
      t.integer :type_document
      t.references :country, null: false, foreign_key: true

      t.timestamps
    end
  end
end
