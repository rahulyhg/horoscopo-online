class Perfil < ApplicationRecord
  belongs_to :sign

  validates :sign_id, presence: true
  validates :love_text, presence: true
  validates :sex_text, presence: true
  validates :family_text, presence: true
  validates :work_text, presence: true
  validates :friendship_text, presence: true
end
