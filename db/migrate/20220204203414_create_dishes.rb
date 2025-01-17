class CreateDishes < ActiveRecord::Migration[7.0]
  def change
    create_table :dishes do |t|
      t.string :name, index: { unique: true }
      t.integer :price
      t.references :menu, null: false, foreign_key: true

      t.timestamps
    end
  end
end
