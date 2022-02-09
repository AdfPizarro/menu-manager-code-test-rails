class Dish < ApplicationRecord
  validates :name, :price, :menu_id, presence: true
  validates :price, numericality: true

  validates :name, uniqueness: true, length: {minimum: 1, maximum: 100}
  validate :name_dont_start_with_e, :dont_be_77
  

  belongs_to :menu

  def name_dont_start_with_e
    if (!name.nil?)
      if (name.first=="e"||name.first=="E")
        errors.add(:name, "Dish name can't start with E or 3")
      end
    end
  end

  def dont_be_77
    if (!menu_id.nil?&&!(defined?(menu.dishes).nil?))
      if ( (menu.dishes.sum(:price)+price) == 77 )
        errors.add(:price, "Menu price can't be 77")
      end
    end
  end

end
