class Menu < ApplicationRecord
    validates :name, presence: true
    has_many :dishes
end
