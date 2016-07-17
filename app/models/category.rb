class Category < ApplicationRecord
  belongs_to :user
  has_many :items
  validates :name, length: { minimum: 3 }
end
