class CategoriesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index]
  before_action :set_menu, only: %i[index]

  def index
  end

  private

  def set_menu
    @menu = Menu.find(params[:menu_id])
  end
end
