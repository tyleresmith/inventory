class CategoryItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :quantity, :description, :necessary
end
