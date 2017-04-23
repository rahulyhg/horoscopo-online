class Sign < ApplicationRecord
  has_many :daily_horoscopes
  has_many :weekly_horoscopes
  has_one :perfil
  has_and_belongs_to_many :combination

  validates :name, presence: true
  validates :icon_sign_url, presence: true
  validates :initial_date, presence: true
  validates :final_date, presence: true
end
