class Good < ApplicationRecord
    belongs_to :company 

    validates :name, :weight, :price, presence: true  
end
