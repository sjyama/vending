class MoneysController < ApplicationController

  def index
    @moneys = Money.all
  end

  def new
    @money = Money.new
  end

  def create
    @money = Money.new(money_params)
    if @money.save
      flash[:success] = 'Money が正常に追加されました'
      redirect_to moneys_path
    else
      flash.now[:danger] = 'Money が追加されませんでした'
      render :new
    end
  end

  def destroy
    set_money
    @money.delete
    flash[:success] = 'Money は正常に削除されました'
    redirect_to moneys_path
  end

  def edit
    set_money
  end

  def update
    set_money
    if @money.update(money_params)
      flash[:success] = 'Money は正常に更新されました'
      redirect_to moneys_path
    else
      flash.now[:danger] = 'Money は更新されませんでした'
      render :edit
    end
  end


  private

  def set_money
    @money = Money.find(params[:id])
  end

  def money_params
    params.require(:money).permit(:name, :price)
  end

end
