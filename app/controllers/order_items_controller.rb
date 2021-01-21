class OrderItemsController < ApplicationController
    def index
        order_items = Order_items.all
        render json: order_items
    end

  def create
    company = Company.find_by_id(params[:company_id])
    company_logo = company.image_logo
    company_name = company.name

    product = company.goods.find_by_id(params[:product_id])
    product_name = product.name
    product_weight = product.weight
    product_image = product.image
    quantity = params[:quantity]

    order = Order.find(params[:order_id])
    order_items = order.order_items

    found_item = order_items.detect do |item| 
        params[:product_id] == item.good_id
    end

    if found_item
        found_item.quantity += params[:quantity].to_i
        found_item.total = found_item.quantity * found_item.unit_price
        found_item.save
       
    else
        orderItem = OrderItem.create(order_id: order.id, good_id: product.id, quantity: quantity, unit_price: product.price, total: quantity * product.price, company_id: company.id, good_name: product_name, good_weight: product_weight, good_image: product_image, company_name: company_name, company_logo: company_logo)
        orderItem.save
        
    end

    user = User.find_by_id(params[:user_id])
    binding.pry
    user.update(current_order: order.id)
    
    total = 0
    total_quantity = 0

    order.order_items.each { |item| total += item.unit_price }
    order.total = total

    order.order_items.each { |item| total_quantity += item.quantity }
    order.total_qty = total_quantity
    order.save
        
  binding.pry
    render json: user
end
   
end
