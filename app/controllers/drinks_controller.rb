class DrinksController < ApplicationController

  def index
    @drinks = Drink.all
  end

  def new
    @drink = Drink.new
  end

  def create
    @drink = Drink.new(drink_params)

    if @drink.save
      flash[:success] = 'Drink が正常に投稿されました'
      redirect_to drinks_path
    else
      flash.now[:danger] = 'Drink が投稿されませんでした'
      render :new
    end
  end


  def destroy
    set_drink
    @drink.delete
    flash[:success] = 'Drink は正常に削除されました'
    redirect_to drinks_path
  end

  def edit
    set_drink
  end

  def update
    set_drink
    if @drink.update(drink_params)
      flash[:success] = 'Drink は正常に更新されました'
      redirect_to drinks_path
    else
      flash.now[:danger] = 'Drink は更新されませんでした'
      render :edit
    end
  end

  def show
  end


  private

  def set_drink
    @drink = Drink.find(params[:id])
  end

  def drink_params
    params.require(:drink).permit(:name, :image, :price)
  end

end
