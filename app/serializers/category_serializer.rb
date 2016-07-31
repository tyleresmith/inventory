class CategorySerializer < ActiveModel::Serializer
  attributes :user_id, :name
  has_one :user, serializer: CategoryUserSerializer
end
