class Dish < ApplicationRecord
  validates :name, :price, presence: true
  validates :name, uniqueness: true
  validate :nameNotStartWithE
  
  
  belongs_to :menu

  def nameNotStartWithE
    if (name.first=="e"||name.first=="E")
      errors.add(:name, "Dish name can't start with E")
    end
  end

end
