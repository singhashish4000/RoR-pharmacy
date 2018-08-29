class CategoriesController < ApplicationController

  before_action :set_category, only: [:show, :edit, :update, :destroy]

  def index
    @category_col_one = Category.find([1,2,3,4,5])
    @category_col_two = Category.find([6,7,8,9,10])
    @category_col_three = Category.find([11,12])
    @category = Category.all
  end


  def show
    if @category
      @products = @category.products 
    else
      @products = ''
    end  
    @category_col_one = Category.find([1,2,3,4,5])
    @category_col_two = Category.find([6,7,8,9,10])
    @category_col_three = Category.find([11,12,13,14,15])
  end

  def new
    @category = Category.new
  end


  def edit
  end


  def create
  p  @category = Category.new(category_params)   
    respond_to do |format|
      if @category.save
        format.html { redirect_to @category, notice: 'Category was successfully created.' }
        format.json { render :show, status: :created, location: @category }
      else
        format.html { render :new }
        format.json { render json: @category.errors, status: :unprocessable_entity }
      end
    end
  end


  def update
    respond_to do |format|
      if @category.update(category_params)
        format.html { redirect_to @category, notice: 'Category was successfully updated.' }
        format.json { render :show, status: :ok, location: @category }
      else
        format.html { render :edit }
        format.json { render json: @category.errors, status: :unprocessable_entity }
      end
    end
  end


  def destroy
    @category.destroy
    respond_to do |format|
      format.html { redirect_to title_url, notice: 'Category was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_category
      @category = Category.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def category_params
      params.require(:category).permit(:name)
    end  

end