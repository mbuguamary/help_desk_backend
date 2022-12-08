class Category < ApplicationRecord
    validates :category_name, presence: true ,uniqueness: true
    has_many :tickets
    has_many  :departments, through: :tickets
end
