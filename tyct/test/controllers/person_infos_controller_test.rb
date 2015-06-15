require 'test_helper'

class PersonInfosControllerTest < ActionController::TestCase
  setup do
    @person_info = person_infos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:person_infos)
  end

  test "should create person_info" do
    assert_difference('PersonInfo.count') do
      post :create, person_info: {  }
    end

    assert_response 201
  end

  test "should show person_info" do
    get :show, id: @person_info
    assert_response :success
  end

  test "should update person_info" do
    put :update, id: @person_info, person_info: {  }
    assert_response 204
  end

  test "should destroy person_info" do
    assert_difference('PersonInfo.count', -1) do
      delete :destroy, id: @person_info
    end

    assert_response 204
  end
end
