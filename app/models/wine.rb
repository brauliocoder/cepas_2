class Wine < ApplicationRecord
  has_many :wine_strains
  has_many :strains, through: :wine_strains, dependent: :destroy

  validates_presence_of :name
  
  accepts_nested_attributes_for :wine_strains
end
