class OrderSerializer < ActiveModel::Serializer
  attributes :id, :subtotal, :total, :user_id, :status
end
