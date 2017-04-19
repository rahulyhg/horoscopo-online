class Dream < ApplicationRecord
  validates :name, presence: true
  validates :description, presence: true
  validates :lucky_numbers, presence: true
  validates :animal, presence: true
  validates :color, presence: true
end
