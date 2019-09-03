class ApplicationController < ActionController::Base

  private

  def current_deposit
    Deposit.find(session[:id])
  rescue ActiveRecord::RecordNotFound
    deposit = Deposit.create
    session[:id] = deposit.id
    deposit
  end
end
