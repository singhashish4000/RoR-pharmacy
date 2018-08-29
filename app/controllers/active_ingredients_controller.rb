class ActiveIngredientsController < ApplicationController
  before_action :set_active_ingredient, only: [:show, :edit, :update, :destroy]

  # GET /products
  # GET /products.json
  def index
    @active_ingredients = ActiveIngredient.all
  end

  # GET /products/1
  # GET /products/1.json
  def show
  end

  # GET /products/new
  def new
    @active_ingredient = ActiveIngredient.new
  end

  # GET /products/1/edit
  def edit
  end

  # POST /products
  # POST /products.json
  def create
  p  @active_ingredient = ActiveIngredient.new(active_ingredient_params)   
    respond_to do |format|
      if @active_ingredient.save
        format.html { redirect_to @active_ingredient, notice: 'Active Ingredient was successfully created.' }
        format.json { render :show, status: :created, location: @active_ingredient }
      else
        format.html { render :new }
        format.json { render json: @active_ingredient.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /products/1
  # PATCH/PUT /products/1.json
  def update
    respond_to do |format|
      if @active_ingredient.update(active_ingredient_params)
        format.html { redirect_to @active_ingredient, notice: 'Active Ingredient was successfully updated.' }
        format.json { render :show, status: :ok, location: @active_ingredient }
      else
        format.html { render :edit }
        format.json { render json: @active_ingredient.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    @active_ingredient.destroy
    respond_to do |format|
      format.html { redirect_to products_url, notice: 'Active Ingredient was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_active_ingredient
      @active_ingredient = ActiveIngredient.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def active_ingredient_params
      params.require(:active_ingredient).permit(:name)
    end
end
