require 'test_helper'

class PinnsControllerTest < ActionController::TestCase
  setup do
    @pinn = pinns(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pinns)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pinn" do
    assert_difference('Pinn.count') do
      post :create, pinn: { description: @pinn.description }
    end

    assert_redirected_to pinn_path(assigns(:pinn))
  end

  test "should show pinn" do
    get :show, id: @pinn
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pinn
    assert_response :success
  end

  test "should update pinn" do
    put :update, id: @pinn, pinn: { description: @pinn.description }
    assert_redirected_to pinn_path(assigns(:pinn))
  end

  test "should destroy pinn" do
    assert_difference('Pinn.count', -1) do
      delete :destroy, id: @pinn
    end

    assert_redirected_to pinns_path
  end
end
