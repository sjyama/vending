class CreateMoney < ActiveRecord::Migration[6.0]
  def change
    create_table :money do |t|
      t.string :name
      t.integer :price
      t.timestamps
    end
  end
end
