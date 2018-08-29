class ProductDescriptionsController < ApplicationController
    before_action :set_product_description, only: [:show, :edit, :update, :destroy]
  
    # GET /products
    # GET /products.json
    def index
      @product_descriptions = ProductDescription.all
    end
  
    # GET /products/1
    # GET /products/1.json
    def show
    #   @all_names = Product.where(active_ingredient_id: @product.active_ingredient)
    #   @name = []
    #   @all_names.each do |names| 
    #     @name << names.name    
    #   end
    #   @name
    #   @product_desc = ProductDescription.where(product_id: @product.id)
  
    end
  
    # GET /products/new
    def new
      @product_description = ProductDescription.new
    end
  
    # GET /products/1/edit
    def edit
    end
  
    # POST /products
    # POST /products.json
    def create
    p  @product_description = ProductDescription.new(product_description_params)   
      respond_to do |format|
        if @product_description.save
          format.html { redirect_to @product_description, notice: 'Product Desc was successfully created.' }
          format.json { render :show, status: :created, location: @product_description }
        else
          format.html { render :new }
          format.json { render json: @product_description.errors, status: :unprocessable_entity }
        end
      end
    end
  
    # PATCH/PUT /products/1
    # PATCH/PUT /products/1.json
    def update
      respond_to do |format|
        if @product_description.update(product_description_params)
          format.html { redirect_to @product_description, notice: 'Product Description was successfully updated.' }
          format.json { render :show, status: :ok, location: @product_description }
        else
          format.html { render :edit }
          format.json { render json: @product_description.errors, status: :unprocessable_entity }
        end
      end
    end
  
    # DELETE /products/1
    # DELETE /products/1.json
    def destroy
      @product_description.destroy
      respond_to do |format|
        format.html { redirect_to product_description_url, notice: 'Product Description was successfully destroyed.' }
        format.json { head :no_content }
      end
    end
  
    private
      # Use callbacks to share common setup or constraints between actions.
      def set_product_description
        @product_description = ProductDescription.find(params[:id])
      end
  
      # Never trust parameters from the scary internet, only allow the white list through.
      def product_description_params
        params.require(:product_description).permit(:desc, :product_id, :middleware_id)
      end
  end
  