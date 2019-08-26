class Product < ApplicationRecord
  has_and_belongs_to_many :product_categories
  accepts_nested_attributes_for :product_categories
end
