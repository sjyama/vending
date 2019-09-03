class AddQuantityToDeposits < ActiveRecord::Migration[6.0]
  def change
    add_column :deposits, :quantity, :integer, default: 1
  end
end
