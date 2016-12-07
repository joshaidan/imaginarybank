require 'test_helper'

class AccountsControllerTest < ActionDispatch::IntegrationTest
  test "require user to login" do
    get accounts_url
    assert_response :redirect
  end
end
