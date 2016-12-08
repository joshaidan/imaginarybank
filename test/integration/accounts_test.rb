require 'test_helper'

class AccountsTest < ActionDispatch::IntegrationTest
  test 'open a new account' do
    sign_in_user
    click_link 'Open a New Account'
    assert_equal new_account_path, current_path
    assert page.has_content?('Open a New Account'), 'Page missing header'
  end
end
