class OrderItemSerializer < ActiveModel::Serializer
  attributes :id, :good_id, :order_id, :quantity, :total, :unit_price, :company_id, :good_name, :good_weight, :good_image, :company_logo, :company_name
  belongs_to :order
end
