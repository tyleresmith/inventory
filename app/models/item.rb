class Item < ApplicationRecord
  belongs_to :cateogry
  validates :name, length: { minimum: 3 }
  validates :description, length: { minimum: 10 }
  validates :quantity, numericality: true
end
