class Api::V1::MenusController < ApplicationController
  def index
    menus = Menu.where(submenu_id: nil)
    render json: menus, root: :menus
  end
end
