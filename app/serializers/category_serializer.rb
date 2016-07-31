class CategorySerializer < ActiveModel::Serializer
  attributes :user_id, :name
  belongs_to :user
end
