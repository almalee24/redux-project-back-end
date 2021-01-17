class OrderItemSerializer < ActiveModel::Serializer
  attributes :id, :good_id, :order_id, :quantity, :total, :unit_price
end
