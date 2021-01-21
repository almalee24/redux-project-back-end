class OrdersController < ApplicationController
  def index
    orders = Order.all

    render json: orders
  end

  def show
    
  end

  def new_order
    
    company = Company.find_by_id(params[:company_id])
    company_logo = company.image_logo
    company_name = company.name

    product = company.goods.find_by_id(params[:product_id])
    product_name = product.name
    product_weight = product.weight
    product_image = product.image
    quantity = params[:quantity]

    order = Order.create(user_id: params[:user_id] )
  
    order_items = OrderItem.create(order_id: order.id, good_id: product.id, quantity: quantity, unit_price: product.price, total: quantity * product.price, company_id: company.id, good_name: product_name, good_weight: product_weight, good_image: product_image, company_name: company_name, company_logo: company_logo)
   
    user = User.find_by_id(params[:user_id])
    user.update(current_order: order.id)
    order_items = order.order_items
    

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
