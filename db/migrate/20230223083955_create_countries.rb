class CreateCountries < ActiveRecord::Migration[6.0]
  def change
    create_table :countries do |t|
      t.string :name, null: false, unique: true
      t.string :locale, null: false
      t.string :acronym

      t.timestamps
    end
  end
end
