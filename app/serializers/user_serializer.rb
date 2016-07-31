class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email, :categories
  has_many :categories, serializer: UserCategorySerializer
end
