class Sign < ApplicationRecord
  has_many :daily_horoscopes
  has_many :weekly_horoscopes
  has_one :perfil
  belongs_to :combination

  validates :perfil_id, presence: true
  validates :name, presence: true
  validates :icon_sign_url, presence: true
  validates :initial_date, presence: true
  validates :final_date, presence: true
end
