require 'test_helper'

class SatelitesControllerTest < ActionController::TestCase
  setup do
    @satelite = satelites(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:satelites)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create satelite" do
    assert_difference('Satelite.count') do
      post :create, :satelite => @satelite.attributes
    end

    assert_redirected_to satelite_path(assigns(:satelite))
  end

  test "should show satelite" do
    get :show, :id => @satelite.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @satelite.to_param
    assert_response :success
  end

  test "should update satelite" do
    put :update, :id => @satelite.to_param, :satelite => @satelite.attributes
    assert_redirected_to satelite_path(assigns(:satelite))
  end

  test "should destroy satelite" do
    assert_difference('Satelite.count', -1) do
      delete :destroy, :id => @satelite.to_param
    end

    assert_redirected_to satelites_path
  end
end
