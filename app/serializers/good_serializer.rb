class GoodSerializer < ActiveModel::Serializer
  attributes :id, :weight, :price, :name, :image
  belongs_to :company
 
end
