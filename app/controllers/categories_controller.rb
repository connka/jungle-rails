class CategoriesController < ApplicationController

  def index
    @category = Category.all
  end

  def new
    @category = Category.new
  end

  def show
    p "this is not a thing"
    @category = Category.find(params[:id])
  end

  def create
    @category = Category.new(category_params)

    if @category.save
      redirect_to [:admin, :category]
    else
      render 'new'
    end
  end


  def category_params
    params.require(:category).permit(:name)
  end

end
