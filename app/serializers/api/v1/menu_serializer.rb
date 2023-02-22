module Api
  module V1
    class MenuSerializer < ActiveModel::Serializer
      attributes :id, :menu_type, :icon, :title, :page_name, :secondary, :ignore, :submenu_id

      belongs_to :menu, class_name: "Menu", foreign_key: "submenu_id", optional: true
      has_many :submenus, class_name: "Menu", foreign_key: "submenu_id"
    end
  end
end
