class CommentSerializer < ActiveModel::Serializer
  attributes :content, :user_id, :category_id
end
