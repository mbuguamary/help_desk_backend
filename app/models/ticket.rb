class Ticket < ApplicationRecord
    validates :email presence: true
    validates :summary presence: true
    validates :description presence: true
    validates :category presence: true
    validates :department presence: true
    belongs_to :department
    belongs_to :category
end
