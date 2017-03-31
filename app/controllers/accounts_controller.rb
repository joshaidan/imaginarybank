class AccountsController < ApplicationController
  before_action :authenticate_user!

  def index
    @accounts = current_user.accounts
  end

  def show
    @account = current_user.accounts.find(params[:id])
  end

  def new
    @account = current_user.accounts.new
  end

  def create
    @account = current_user.accounts.new(account_params)
    respond_to do |format|
      if @account.save!
        format.html { redirect_to accounts_path, notice: "Successfully opened new #{@account.account_type} account." }
      else
        format.html { redirect_to new_accounts_path }
      end
    end
  end

  def destroy
  end

  private

  def account_params
    params.required(:account).permit(:account_type)
  end
end
