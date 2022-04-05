class CreateOenologists < ActiveRecord::Migration[6.1]
  def change
    create_table :oenologists do |t|
      t.string :name
      t.integer :age
      t.string :nationality
      t.string :work_place

      t.timestamps
    end
  end
end
