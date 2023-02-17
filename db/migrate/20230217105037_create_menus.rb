class CreateMenus < ActiveRecord::Migration[6.0]
  def change
    create_table :menus do |t|
      t.string :icon
      t.string :title
      t.string :page_name
      t.boolean :ignore

      t.timestamps
    end
  end
end
