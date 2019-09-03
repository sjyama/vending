class Deposit < ApplicationRecord
  belongs_to :money

  def add_money(money_id)
    current_deposit = Deposit.find_by_money_id(money_id)
    if current_deposit
      current_deposit.quantity += 1
    else
      current_deposit = Deposit.new(money_id: money_id)
    end
    current_deposit
  end
end
