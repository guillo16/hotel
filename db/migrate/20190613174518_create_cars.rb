class CreateCars < ActiveRecord::Migration[5.2]
  def change
    create_table :cars do |t|
      t.string :name
      t.text :description
      t.string :photo1
      t.string :photo2
      t.string :photo3
      t.string :photo4

      t.timestamps
    end
  end
end
