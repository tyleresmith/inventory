class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :category
  validates :content, length: { minimum: 10, maximum: 140 }
  validates :user_id, presence: true
  validates :category_id, presence: true

  def username_and_inventory(current_user)
    self.category.user === current_user ? user = 'Your' : user = self.category.user.username + "'s"
    user + " " + self.category.name + " Inventory"
    # ex: Your Pantry Inventory OR
    # ex: Jon Doe's Pantry Inventory

  end
end
