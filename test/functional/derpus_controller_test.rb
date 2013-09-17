require 'test_helper'

class DerpusControllerTest < ActionController::TestCase
  setup do
    @derpu = derpus(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:derpus)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create derpu" do
    assert_difference('Derpu.count') do
      post :create, derpu: {  }
    end

    assert_redirected_to derpu_path(assigns(:derpu))
  end

  test "should show derpu" do
    get :show, id: @derpu
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @derpu
    assert_response :success
  end

  test "should update derpu" do
    put :update, id: @derpu, derpu: {  }
    assert_redirected_to derpu_path(assigns(:derpu))
  end

  test "should destroy derpu" do
    assert_difference('Derpu.count', -1) do
      delete :destroy, id: @derpu
    end

    assert_redirected_to derpus_path
  end
end
