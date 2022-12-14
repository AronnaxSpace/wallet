class AccountsController < ApplicationController
  def index
    @accounts = current_user.accounts
  end

  def new
    @account = Account.new
  end

  def create
    @account = current_user.accounts.new(account_params)

    @account.save
  end

  def update
    @account.update(account_params)
  end

  def destroy
    @account.destroy
  end

  private

  def account
    @account ||= Account.find(params[:id])
  end
  helper_method :account

  def account_params
    params.require(:account).permit(:name, :balance_in_cents)
  end
end
