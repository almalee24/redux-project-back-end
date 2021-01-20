class OrderSerializer < ActiveModel::Serializer
  attributes :id, :subtotal, :total, :user_id, :status, :total_qty
  has_many :order_items
end