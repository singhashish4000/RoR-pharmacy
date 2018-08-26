class CategoryController < ApplicationController
  def index
    @category_col_one = Category.find([1,2,3,4,5])
    @category_col_two = Category.find([6,7,8,9,10])
    @category_col_three = Category.find([11,12,13,14,15])
    @category = Category.all
  end


  def show
    @category = Category.find(params[:id])
    @products = @category.products
    @category_col_one = Category.find([1,2,3,4,5])
    @category_col_two = Category.find([6,7,8,9,10])
    @category_col_three = Category.find([11,12,13,14,15])
  end

end