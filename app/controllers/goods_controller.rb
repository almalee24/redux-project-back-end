class GoodsController < ApplicationController
  before_action :set_good, only: [:show, :update, :destroy]

  # GET /goods
  def index
    @goods = Good.all

    render json: @goods
  end

  # GET /goods/1
  def show
    render json: @good
  end

  # POST /goods
  def create
    @good = Good.new(good_params)
    binding.pry
    if @good.save
      binding.pry
      render json: @good
    else
      render json: @good.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /goods/1
  def update
    if @good.update(good_params)
      render json: @good
    else
      render json: @good.errors, status: :unprocessable_entity
    end
  end

  # DELETE /goods/1
  def destroy
    @good.destroy
    render json: @good 
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_good
      @good = Good.find(params[:id])
    end


    # Only allow a trusted parameter "white list" through.
    def good_params
      params.require(:good).permit(:name, :weight, :price, :image, :image_two, :image_three, :description, :sale, :company_id)
    end
end
