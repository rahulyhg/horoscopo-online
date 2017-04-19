class WeeklyHoroscope < ApplicationRecord
  belongs_to :sign
  validates :name, presence: true
end
