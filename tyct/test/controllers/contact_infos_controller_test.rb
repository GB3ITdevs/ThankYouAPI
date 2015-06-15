require 'test_helper'

class ContactInfosControllerTest < ActionController::TestCase
  setup do
    @contact_info = contact_infos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:contact_infos)
  end

  test "should create contact_info" do
    assert_difference('ContactInfo.count') do
      post :create, contact_info: {  }
    end

    assert_response 201
  end

  test "should show contact_info" do
    get :show, id: @contact_info
    assert_response :success
  end

  test "should update contact_info" do
    put :update, id: @contact_info, contact_info: {  }
    assert_response 204
  end

  test "should destroy contact_info" do
    assert_difference('ContactInfo.count', -1) do
      delete :destroy, id: @contact_info
    end

    assert_response 204
  end
end
