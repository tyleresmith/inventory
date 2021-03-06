class Item < ApplicationRecord
  belongs_to :category
  validates :name, length: { minimum: 3 }
  validates :description, length: { minimum: 10 }
  validates :quantity, numericality: true, presence: true
end
