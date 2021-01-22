class CompanyOrderSerializer < ActiveModel::Serializer
  attributes :id, :company_logo, :company_name, :company_total
  has_one :order
  has_one :user
  has_one :company
end
