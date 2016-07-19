class Category < ApplicationRecord
  belongs_to :user
  has_many :items
  has_many :comments
  validates :name, length: { minimum: 3 }

  def total_items
    total = 0
    self.items.each { |i| total += i.quantity} 
    total
  end
end
