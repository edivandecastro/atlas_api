class Menu < ApplicationRecord
  belongs_to :menu, class_name: "Menu", foreign_key: "submenu_id", optional: true
  has_many :submenus, class_name: "Menu", foreign_key: "submenu_id"
end
