class CategoriesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:new, :edit]
  before_action :set_menu, only: [:new, :index]

  def index

  end
  def new
    @category = @menu.categories.new
  end

  def create
    @category = @menu.categories.build(category_params)
  end

  def edit
  end

  private

  def set_menu
    @menu = Menu.find(params[:menu_id])
  end

  def category_params
    require(:category).permit(:name)
  end
end
