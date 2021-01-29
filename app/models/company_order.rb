class CompanyOrder < ApplicationRecord
  belongs_to :order, polymorphic: true
  belongs_to :user, polymorphic: true
  belongs_to :company, polymorphic: true
  has_many :order_items
  has_many :goods, through: :order_items
end
