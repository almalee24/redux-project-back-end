class OrdersController < ApplicationController
  def neworder
    product_1 = Good.find(order_params[:good_id])
    quantity_1 = order_params[:quantity]

    order = Order.create(user_id: order_params[:user_id] )
    order_items = OrderItem.create(order_id: order.id, good_id: order_params[:good_id], quantity: order_params[:quantity], item_price: product_1.price_in_cents * quantity_1)
    user = User.find(order_params[:user_id])
    user.update(current_order: order.id )
    order_items = order.order_items
  end 
  
end
