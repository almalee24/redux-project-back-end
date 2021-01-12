class GoodSerializer < ActiveModel::Serializer
  attributes :id, :weight, :price
  belongs_to :company
 
end
