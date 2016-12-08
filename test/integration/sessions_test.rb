require 'test_helper'

class SessionsTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end

  test 'user required to login' do
    visit accounts_url
    assert_equal new_user_session_path, current_path
  end

  test 'user can sign up' do
    visit new_user_session_path
    assert_equal new_user_session_path, current_path
    click_link 'Sign up'
    assert_equal new_user_registration_path, current_path
    fill_in 'Email', with: 'user2@example.com'
    fill_in 'Password', with: 'password'
    fill_in 'Password confirmation', with: 'password'
    click_button 'Sign up'
    assert_equal root_path, current_path
  end
end
