class Company < ApplicationRecord
    has_many :order_items
    has_many :goods 

    validates :name, :location, presence: true 
end
