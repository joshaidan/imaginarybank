class AccountsController < ApplicationController
  def index
  end

  def show
    @account = Accounts.find(params[:id])
  end
end
