class Wine < ApplicationRecord
  validates_presence_of :name
  
  has_many :wine_strains
  has_many :strains, through: :wine_strains, dependent: :destroy

  has_and_belongs_to_many :oenologists

  accepts_nested_attributes_for :wine_strains
end
