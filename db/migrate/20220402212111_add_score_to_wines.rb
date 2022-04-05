class AddScoreToWines < ActiveRecord::Migration[6.1]
  def change
    add_column :wines, :score, :float
  end
end
