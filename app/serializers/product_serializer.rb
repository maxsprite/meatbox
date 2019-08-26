class ProductSerializer < ActiveModel::Serializer
  attributes :id, :title
  has_many :product_categories
end
