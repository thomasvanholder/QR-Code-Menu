class CategoriesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index new create edit]
  before_action :set_menu, only: %i[new index create]

  def index
  end

  def new
  end

  def create
    @category = @menu.categories.build(category_params)

    respond_to do |format|
      if @category.save
        format.html { redirect_to @menu, notice: '#Categories successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def edit
  end


  private

  def set_menu
    @menu = Menu.find(params[:menu_id])
  end

  def category_params
    params.require(:category).permit(:name)
  end
end
