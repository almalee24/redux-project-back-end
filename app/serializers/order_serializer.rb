class OrderSerializer < ActiveModel::Serializer
  attributes :id, :subtotal, :total, :user_id, :status, :total_qty
  has_many :order_items
  has_many :companies, through: :order_items, source: :company
  has_many :goods, through: :order_items
end