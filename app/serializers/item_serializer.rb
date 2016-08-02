class ItemSerializer < ActiveModel::Serializer
  attributes :category, :name, :description, :quantity, :necessary
  has_one :category, serializer: ItemCategorySerializer
end
