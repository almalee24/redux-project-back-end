class OrderItemsController < ApplicationController
    def index
        order_items = Order_items.all
        render json: order_items
    end

  def create
    company = Company.find_by_id(params[:company_id])

    product = company.goods.find_by_id(params[:product_id])
    product_name = product.name
    product_weight = product.weight
    product_image = product.image
    quantity = params[:quantity]

    company_order = CompanyOrder.find_by_id(company.id)
    order_items = company_order.order_items

    order = Order.find(params[:order_id])

    found_item = order_items.detect do |item| 
        params[:product_id] == item.good_id
    end

    if found_item
        found_item.quantity += params[:quantity].to_i
        found_item.total = found_item.quantity * found_item.unit_price
        found_item.save
       
    else
        orderItem = OrderItem.create(company_order_id: order.id, good_id: product.id, quantity: quantity, unit_price: product.price, total: quantity * product.price, good_name: product_name, good_weight: product_weight, good_image: product_image)
        orderItem.save
        
    end

    user = User.find_by_id(params[:user_id])
    user.update(current_order: order.id) 

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
