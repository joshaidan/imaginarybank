require 'test_helper'

class TransactionsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get account_transactions_url(account_id: accounts(:one))
    assert_response :success
  end

  test "should get new" do
    get new_account_transaction_url(account_id: accounts(:one))
    assert_response :success
  end

  test "should get show" do
    get account_transactions_url(account_id: accounts(:one))
    assert_response :success
  end

end
