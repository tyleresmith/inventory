class ItemSerializer < ActiveModel::Serializer
  attributes :category, :name, :description, :quantity, :necessary
end
