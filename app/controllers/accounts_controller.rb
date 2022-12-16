class AccountsController < ApplicationController
  def index
    @accounts = current_user.accounts.order(id: :desc)
  end

  def new
    @account = Account.new
  end

  def create
    @account = current_user.accounts.new(account_params)

    if @account.save
      respond_to do |format|
        format.html { redirect_to accounts_path, notice: 'Account was successfully created.' }
        format.turbo_stream { flash.now[:notice] = 'Account was successfully created.' }
      end
    else
      render :new, status: :unprocessable_entity
    end
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
