class CreateMenus < ActiveRecord::Migration[6.0]
  def change
    create_table :menus do |t|
      t.integer :menu_type
      t.string :icon
      t.string :title
      t.string :page_name
      t.boolean :secondary
      t.boolean :ignore
      t.integer :submenu_id

      t.timestamps
    end
  end
end
