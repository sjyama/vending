class StoresController < ApplicationController
  def index
    @drinks = Drink.order(:name)
  end
end
