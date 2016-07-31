class CategorySerializer < ActiveModel::Serializer
  attributes :user_id, :name
  has_one :user, serializer: CategoryUserSerializer
  has_many :items, serializer: CategoryItemSerializer
end
