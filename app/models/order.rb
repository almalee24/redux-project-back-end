class Order < ApplicationRecord
    belongs_to :user
    has_many :order_items
    has_many :companies, through: :order_items, source: :good
    has_many :goods, through: :order_items
end
