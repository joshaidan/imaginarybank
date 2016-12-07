require 'test_helper'

class AccountTest < ActiveSupport::TestCase
  test 'can deposit into account' do
    account = Account.new
    transaction = account.transactions.new(amount: 100)
    transaction.save!
    assert_equal account.balance, 100

    transaction = account.transactions.new(amount: -200)
    transaction.save!
    assert_equal account.balance, -100
  end

  test 'mark account as chequing' do
    account = Account.new
    account.account_type = 'chequing'
    assert account.chequing?
  end
end
