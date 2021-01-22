class CompanyOrder < ApplicationRecord
  belongs_to :order, polymorphic: true
  belongs_to :user, polymorphic: true
  belongs_to :company, polymorphic: true
end
