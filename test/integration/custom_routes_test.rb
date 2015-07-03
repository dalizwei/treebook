require 'test_helper'

class CustomRoutesTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  test "That /login route open the log in page" do
    get "/login"
    assert_response :success
  end
  test "That /logout route log out the session" do
    get "/logout"
    assert_response :redirect
    assert_redirected_to '/'
  end
  test "That /register route open the registration page" do
    get '/register'
    assert_response :success
  end
end
