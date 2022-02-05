class Dish < ApplicationRecord
  validates :name, :price, presence: true
  
  belongs_to :menu
end
