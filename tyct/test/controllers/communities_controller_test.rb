require 'test_helper'

class CommunitiesControllerTest < ActionController::TestCase
  setup do
    @community = communities(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:communities)
  end

  test "should create community" do
    assert_difference('Community.count') do
      post :create, community: {  }
    end

    assert_response 201
  end

  test "should show community" do
    get :show, id: @community
    assert_response :success
  end

  test "should update community" do
    put :update, id: @community, community: {  }
    assert_response 204
  end

  test "should destroy community" do
    assert_difference('Community.count', -1) do
      delete :destroy, id: @community
    end

    assert_response 204
  end
end
