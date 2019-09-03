class CreateDeposits < ActiveRecord::Migration[6.0]
  def change
    create_table :deposits do |t|
      t.integer :money_id
      t.timestamps
    end
  end
end
