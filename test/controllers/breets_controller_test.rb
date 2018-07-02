require 'test_helper'

class BreetsControllerTest < ActionController::TestCase
  setup do
    @breet = breets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:breets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create breet" do
    assert_difference('Breet.count') do
      post :create, breet: { breet: @breet.breet }
    end

    assert_redirected_to breet_path(assigns(:breet))
  end

  test "should show breet" do
    get :show, id: @breet
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @breet
    assert_response :success
  end

  test "should update breet" do
    patch :update, id: @breet, breet: { breet: @breet.breet }
    assert_redirected_to breet_path(assigns(:breet))
  end

  test "should destroy breet" do
    assert_difference('Breet.count', -1) do
      delete :destroy, id: @breet
    end

    assert_redirected_to breets_path
  end
end
