class Combination < ApplicationRecord
  has_and_belongs_to_many :signs

  validates :love_text, presence: true
  validates :love_grade, presence: true
  validates :sex_text, presence: true
  validates :sex_grade, presence: true
  validates :work_text, presence: true
  validates :work_grade, presence: true
  validates :friendship_text, presence: true
  validates :friendship_grade, presence: true
end
