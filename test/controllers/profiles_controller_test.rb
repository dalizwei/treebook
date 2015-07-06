require 'test_helper'

class ProfilesControllerTest < ActionController::TestCase
  test "should get show" do
    get :show, id: users(:dali).profile_name
    assert_response :success
    assert_template 'profiles/show'
  end

  test "should render a 404 on a profile name not found" do
    get :show, id: "doesn't exist"
    assert_response :not_found, "it did not render a 404 error on a profile not found"
  end

  test " That variables are assigned on successful profile viewing " do
    get :show, id: users(:dali).profile_name
    assert assigns(:user), "user was not correctly assigned"
    assert_not_empty assigns(:statuses), "statuses are empty or not correctly assigned"
  end

  test "Only shows the correct user's statuses" do
    get :show, id: users(:dali).profile_name
    assigns(:statuses).each do |status|
      assert_equal users(:dali), status.user, "The status owner doesn't match the profile's user"
    end
  end
end