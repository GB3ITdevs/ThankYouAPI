require 'test_helper'

class AdministratorsControllerTest < ActionController::TestCase
  setup do
    @administrator = administrators(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:administrators)
  end

  test "should create administrator" do
    assert_difference('Administrator.count') do
      post :create, administrator: {  }
    end

    assert_response 201
  end

  test "should show administrator" do
    get :show, id: @administrator
    assert_response :success
  end

  test "should update administrator" do
    put :update, id: @administrator, administrator: {  }
    assert_response 204
  end

  test "should destroy administrator" do
    assert_difference('Administrator.count', -1) do
      delete :destroy, id: @administrator
    end

    assert_response 204
  end
end
