class Company < ApplicationRecord
    has_many :goods 

    validates :name, :location, presence: true 
end
