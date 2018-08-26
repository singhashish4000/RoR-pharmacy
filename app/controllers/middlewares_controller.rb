class MiddlewaresController < ApplicationController
  before_action :set_middleware, only: [:show, :edit, :update, :destroy]

  # GET /middlewares
  # GET /middlewares.json
  def index
    @middlewares = Middleware.all
  end

  # GET /middlewares/1
  # GET /middlewares/1.json
  def show
  end

  # GET /middlewares/new
  def new
    @middleware = Middleware.new
  end

  # GET /middlewares/1/edit
  def edit
  end

  # POST /middlewares
  # POST /middlewares.json
  def create
    @middleware = Middleware.new(middleware_params)

    respond_to do |format|
      if @middleware.save
        format.html { redirect_to @middleware, notice: 'Middleware was successfully created.' }
        format.json { render :show, status: :created, location: @middleware }
      else
        format.html { render :new }
        format.json { render json: @middleware.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /middlewares/1
  # PATCH/PUT /middlewares/1.json
  def update
    respond_to do |format|
      if @middleware.update(middleware_params)
        format.html { redirect_to @middleware, notice: 'Middleware was successfully updated.' }
        format.json { render :show, status: :ok, location: @middleware }
      else
        format.html { render :edit }
        format.json { render json: @middleware.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /middlewares/1
  # DELETE /middlewares/1.json
  def destroy
    @middleware.destroy
    respond_to do |format|
      format.html { redirect_to middlewares_url, notice: 'Middleware was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_middleware
      @middleware = Middleware.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def middleware_params
      params.require(:middleware).permit(:product_id, :quantity, :web_price, :web_price_desc, :phone_price, :phone_price_desc)
    end
end
