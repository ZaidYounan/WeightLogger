class Entry < ApplicationRecord
    belongs_to :user

    validates :current_weight, presence: true, numericality: { greater_than: 0 }
    validates :meal_type, presence: true
    validates :calories, presence: true
    validates :carbohydrates, presence: true
    validates :fats, presence: true
    validates :proteins, presence: true
    validates :current_date, presence: true
end
