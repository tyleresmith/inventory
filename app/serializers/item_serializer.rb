class ItemSerializer < ActiveModel::Serializer
  attributes :category_id, :name, :description, :quantity, :necessary
end
