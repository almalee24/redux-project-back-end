class CompanySerializer < ActiveModel::Serializer
  attributes :id, :name, :location, :image_background, :image_logo
  has_many :goods 
  
end
