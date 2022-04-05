class Strain < ApplicationRecord
  has_many :wine_strains
  has_many :wines, through: :wine_strains, dependent: :destroy

  has_many :wine_scores
  has_many :oenologists, through: :wine_scores, dependent: :destroy

  validates :name, presence: true
end
