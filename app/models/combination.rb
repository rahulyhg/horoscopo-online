class Combination < ApplicationRecord
  validates :id_sign_a, presence: true
  validates :id_sign_b, presence: true
  validates :love_text, presence: true
  validates :love_grade, presence: true
  validates :sex_text, presence: true
  validates :sex_grade, presence: true
  validates :work_text, presence: true
  validates :work_grade, presence: true
  validates :friendship_text, presence: true
  validates :friendship_grade, presence: true
end
