class CreateStocks < ActiveRecord::Migration[6.0]
  def change
    create_table :stocks do |t|
      t.string :name
      t.string :symbol
      t.float :price

      t.timestamps
    end
  end
end
