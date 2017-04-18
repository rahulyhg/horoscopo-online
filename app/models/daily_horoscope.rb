class DailyHoroscope < ApplicationRecord
  belongs_to :sign
  validates :date, presence: true
  validates :sign_id, presence: true
  validates :day_of_the_week, presence: true
  validates :text, presence: true
  validates :color, presence: true
  validates :numbers, presence: true
end
