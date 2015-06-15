require 'test_helper'

class ProjectWebsitesControllerTest < ActionController::TestCase
  setup do
    @project_website = project_websites(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:project_websites)
  end

  test "should create project_website" do
    assert_difference('ProjectWebsite.count') do
      post :create, project_website: {  }
    end

    assert_response 201
  end

  test "should show project_website" do
    get :show, id: @project_website
    assert_response :success
  end

  test "should update project_website" do
    put :update, id: @project_website, project_website: {  }
    assert_response 204
  end

  test "should destroy project_website" do
    assert_difference('ProjectWebsite.count', -1) do
      delete :destroy, id: @project_website
    end

    assert_response 204
  end
end
