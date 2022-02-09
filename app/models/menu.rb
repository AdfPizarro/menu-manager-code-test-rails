class Menu < ApplicationRecord
    validates :name, presence: true, uniqueness: true, length: {minimum: 1, maximum: 100}
    has_many :dishes

end
