class Department < ApplicationRecord
    validates :department_name, presence: true ,uniqueness: true
    has_many :tickets
    has_many :categories, through: :tickets
end
