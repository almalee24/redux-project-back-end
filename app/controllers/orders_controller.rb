class OrdersController < ApplicationController
  def index
    orders = Order.all

    render json: orders
  end

  def show
    
  end

  def new_order
    
    company = Company.find_by_id(params[:company_id])
    product = company.goods.find_by_id(params[:product_id])
    quantity = params[:quantity]
    binding.pry
    order = Order.create(user_id: params[:user_id] )
    binding.pry
    order_items = OrderItem.create(order_id: order.id, good_id: product.id, quantity: quantity, unit_price: product.price, total: quantity * product.price)
    binding.pry
    user = User.find(params[:user_id])
    user.update(current_order: order.id)
    order_items = order.order_items
    binding.pry

    total = 0
    total_quantity = 0

    order.order_items.each{ |item| total += item.unit_price}
    order.total = total

    order.order_items.each { |item| total_quantity += item.quantity}
    order.total_qty = total_quantity

    order.save

    binding.pry
    render json: user
  end 
  
end
