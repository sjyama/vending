class DepositsController < ApplicationController

  def index
    # 保持しているDeposit情報（入金状況）を取得
    # #保持しているセッションのDeposit情報を取得したい。？
    @deposits = Deposit.all
  end

  def new
    @deposit = Deposit.new
  end

  def create
    @deposit = current_deposit
    money = Money.find(params[:money_id])
    @deposit = @deposit.add_money(money.id)

    if @deposit.save
      flash[:success] = 'Deposit が正常に追加されました'
      redirect_to deposits_path
    else
      flash.now[:danger] = 'Deposit が追加されませんでした'
      render :new
    end
  end

  def show
    @moneys = Money.all
  end

  def destroy
    # @deposit = current_deposit
    Deposit.delete_all
    flash[:success] = 'Deposit は正常に削除されました'
    redirect_to deposit_path
  end

  private

  def deposit_params
    params.require(:deposit).permit(:money_id)
  end

end
