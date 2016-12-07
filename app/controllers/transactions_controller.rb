class TransactionsController < ApplicationController
  def index
  end

  def new
    @account = Account.find(params[:account_id])
    @transaction = @account.transactions.new
  end

  def create
  end

  def show
  end
end
