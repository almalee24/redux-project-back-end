class OrderItemsController < ApplicationController
    def index
        order_items = Order_items.all
        render json: order_items
    end

  def create
    company = Company.find_by_id(params[:company_id])
    product = company.goods.find_by_id(params[:product_id])
    order = Order.find(params[:order_id])
    quantity = params[:quantity]
    order_items = order.order_items

    found_item = order_items.detect do |item| 
        params[:good_id] == item.product_id
    end

    if found_item
        found_item.quantity += params[:quantity].to_i
        found_item.total = found_item.quantity * found_item.unit_price
        found_item.save
       
    else
        orderItem = OrderItem.create(order_id: order.id, good_id: product.id, quantity: quantity, unit_price: product.price, total: quantity * product.price)
        orderItem.save
        
    end
    binding.pry
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
