class CommentSerializer < ActiveModel::Serializer
  attributes :content, :user, :category_id
end
