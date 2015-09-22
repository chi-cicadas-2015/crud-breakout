class CreateTshirts < ActiveRecord::Migration
  def change
    create_table :tshirts do |t|
      t.string :name, null: false
      t.string :size, null: false
      t.decimal :price
      t.string :color
    end
  end
end
