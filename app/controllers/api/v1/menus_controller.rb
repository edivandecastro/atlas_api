class Api::V1::MenusController < ApplicationController
  def index
    menus = Api::V1::Menu.where(submenu_id: nil)
    render json: menus, root: :menus
  end
end
