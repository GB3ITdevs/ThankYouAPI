require 'test_helper'

class PhoneNumbersControllerTest < ActionController::TestCase
  setup do
    @phone_number = phone_numbers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:phone_numbers)
  end

  test "should create phone_number" do
    assert_difference('PhoneNumber.count') do
      post :create, phone_number: {  }
    end

    assert_response 201
  end

  test "should show phone_number" do
    get :show, id: @phone_number
    assert_response :success
  end

  test "should update phone_number" do
    put :update, id: @phone_number, phone_number: {  }
    assert_response 204
  end

  test "should destroy phone_number" do
    assert_difference('PhoneNumber.count', -1) do
      delete :destroy, id: @phone_number
    end

    assert_response 204
  end
end
