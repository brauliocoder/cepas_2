class WineStrain < ApplicationRecord
  belongs_to :wine
  belongs_to :strain

  validates_presence_of :percentage
  validates :wine_id, uniqueness: { scope: :strain_id }
end
