require 'test_helper'

class StatusesControllerTest < ActionController::TestCase
  setup do
    @status = statuses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:statuses)
  end

  test "should be redirected when not logged in before creating new status" do
    get :new
    assert_response :redirect, "The page was not redirected"
    assert_redirected_to new_user_session_path, "The page redirected to is not the one expected"
  end

  test "Should be logged in to post a status" do
    post :create, status:{content:"Hello"}
    assert_response :redirect
    assert_redirected_to new_user_session_path
  end

  test "Should render the new page when logged in" do
    sign_in users(:dali)
    get :new
    assert_response :success
  end

  test "should create status when logged in" do
    sign_in users(:dali)
    assert_difference('Status.count') do
      post :create, status: { content: @status.content, user_id: @status.user_id }
    end
    assert_redirected_to status_path(assigns(:status))
  end

  test "should show status" do
    get :show, id: @status
    assert_response :success
  end

  test "should get redirected when edit and not logged in" do
    get :edit , id: @status
    assert_response :redirect
    assert_redirected_to new_user_session_path
  end

  test "should get edit when logged in" do
    sign_in users(:dali)
    get :edit, id: @status
    assert_response :success
  end

  test "should not update the status when not logged in" do
    patch :update, id: @status, status: { content: @status.content, user_id: @status.user_id}
    assert_response :redirect
    assert_redirected_to new_user_session_path
  end

  test "should update status when logged in" do
    sign_in users(:dali)
    patch :update, id: @status, status: { content: @status.content, user_id: @status.user_id }
    assert_redirected_to status_path(assigns(:status))
  end

  test "should destroy status when logged in" do
    sign_in users(:dali)
    assert_difference('Status.count', -1) do
      delete :destroy, id: @status
    end

    assert_redirected_to statuses_path
  end
end
