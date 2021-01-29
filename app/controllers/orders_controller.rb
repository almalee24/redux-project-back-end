class OrdersController < ApplicationController
  def index
    orders = Order.all

    render json: orders
  end

  def show
    
  end

  def new_order
    user = User.find_by_id(params[:user_id])
    
    company = Company.find_by_id(params[:company_id])
    company_logo = company.image_logo
    company_name = company.name

    product = company.goods.find_by_id(params[:product_id])
    product_name = product.name
    product_weight = product.weight
    product_image = product.image
    quantity = params[:quantity]

    order = Order.create(user_id: user.id)
  
    company_order = CompanyOrder.create(company_logo: company_logo, company_name: company_name, company_name: company_name, order_id: order.id)
    order_items = OrderItem.create(company_order_id: compay_order.id, good_id: product.id, quantity: quantity, unit_price: product.price, total: quantity * product.price, good_name: product_name, good_weight: product_weight, good_image: product_image)
   
    
    user.update(current_order: order.id)
    order_items = company_order.order_items
    

    total = 0
    total_quantity = 0

    company_order.order_items.each{ |item| total += item.unit_price}
    company_order.company_total = total
    order.total = total 

    company_order.order_items.each { |item| total_quantity += item.quantity}
    company_order.total_quantity = total_quantity
    order.total_qty = total_quantity

    company_order.save

   binding.pry
    render json: user
  end 
  
end
