require 'test_helper'

class StatuasControllerTest < ActionController::TestCase
  setup do
    @statua = statuas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:statuas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create statua" do
    assert_difference('Statua.count') do
      post :create, statua: @statua.attributes
    end

    assert_redirected_to statua_path(assigns(:statua))
  end

  test "should show statua" do
    get :show, id: @statua
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @statua
    assert_response :success
  end

  test "should update statua" do
    put :update, id: @statua, statua: @statua.attributes
    assert_redirected_to statua_path(assigns(:statua))
  end

  test "should destroy statua" do
    assert_difference('Statua.count', -1) do
      delete :destroy, id: @statua
    end

    assert_redirected_to statuas_path
  end
end
