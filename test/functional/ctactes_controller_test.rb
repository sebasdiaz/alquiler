require 'test_helper'

class CtactesControllerTest < ActionController::TestCase
  setup do
    @ctacte = ctactes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ctactes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ctacte" do
    assert_difference('Ctacte.count') do
      post :create, :ctacte => @ctacte.attributes
    end

    assert_redirected_to ctacte_path(assigns(:ctacte))
  end

  test "should show ctacte" do
    get :show, :id => @ctacte.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @ctacte.to_param
    assert_response :success
  end

  test "should update ctacte" do
    put :update, :id => @ctacte.to_param, :ctacte => @ctacte.attributes
    assert_redirected_to ctacte_path(assigns(:ctacte))
  end

  test "should destroy ctacte" do
    assert_difference('Ctacte.count', -1) do
      delete :destroy, :id => @ctacte.to_param
    end

    assert_redirected_to ctactes_path
  end
end
