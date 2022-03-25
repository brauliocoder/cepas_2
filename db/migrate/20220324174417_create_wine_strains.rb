class CreateWineStrains < ActiveRecord::Migration[6.1]
  def change
    create_table :wine_strains do |t|
      t.float :percentage
      t.belongs_to :wine, null: false, foreign_key: true
      t.belongs_to :strain, null: false, foreign_key: true

      t.timestamps
    end
  end
end
