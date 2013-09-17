require 'test_helper'

class TatersControllerTest < ActionController::TestCase
  setup do
    @tater = taters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:taters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tater" do
    assert_difference('Tater.count') do
      post :create, tater: {  }
    end

    assert_redirected_to tater_path(assigns(:tater))
  end

  test "should show tater" do
    get :show, id: @tater
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tater
    assert_response :success
  end

  test "should update tater" do
    put :update, id: @tater, tater: {  }
    assert_redirected_to tater_path(assigns(:tater))
  end

  test "should destroy tater" do
    assert_difference('Tater.count', -1) do
      delete :destroy, id: @tater
    end

    assert_redirected_to taters_path
  end
end
