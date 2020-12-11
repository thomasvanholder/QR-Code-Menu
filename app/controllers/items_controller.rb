class ItemsController < ApplicationController
  skip_before_action :authenticate_user!
   before_action :set_menu, only: [:index]

  def index
  end

  private

  def set_menu
    @menu = Menu.find(params[:menu_id])
  end
end
