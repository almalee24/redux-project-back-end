class CompanyOrdersController < ApplicationController
  before_action :set_company_order, only: [:show, :update, :destroy]

  # GET /company_orders
  def index
    @company_orders = CompanyOrder.all

    render json: @company_orders
  end

  # GET /company_orders/1
  # def show
  #   render json: @company_order
  # end

  # POST /company_orders
  def create
    company = Company.find_by_id(params[:company_id])
    company_logo = company.image_logo
    company_name = company.name 

    
    @company_order = CompanyOrder.new(company_order_params)

    if @company_order.save
      render json: @company_order, status: :created, location: @company_order
    else
      render json: @company_order.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /company_orders/1
  def update
    if @company_order.update(company_order_params)
      render json: @company_order
    else
      render json: @company_order.errors, status: :unprocessable_entity
    end
  end

  # DELETE /company_orders/1
  def destroy
    @company_order.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_company_order
      @company_order = CompanyOrder.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def company_order_params
      params.require(:company_order).permit(:order_id, :order_type, :user_id, :user_type, :company_id, :company_type, :company_logo, :company_name, :company_total)
    end
end
