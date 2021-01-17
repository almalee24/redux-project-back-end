class Good < ApplicationRecord
    has_many :order_items
    belongs_to :company 

    validates :name, :weight, :price, presence: true  
end
