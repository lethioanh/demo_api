class Product::ProductSerializer < ActiveModel::Serializer
  attributes :id, :title, :description
end
