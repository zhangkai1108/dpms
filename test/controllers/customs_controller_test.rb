require 'test_helper'

class CustomsControllerTest < ActionController::TestCase
  setup do
    @custom = customs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:customs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create custom" do
    assert_difference('Custom.count') do
      post :create, custom: { addr: @custom.addr, customDesc: @custom.customDesc, customLove: @custom.customLove, level: @custom.level, linkMan: @custom.linkMan, linkTel: @custom.linkTel, mainMan: @custom.mainMan, mainTel: @custom.mainTel, name: @custom.name, operName: @custom.operName }
    end

    assert_redirected_to custom_path(assigns(:custom))
  end

  test "should show custom" do
    get :show, id: @custom
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @custom
    assert_response :success
  end

  test "should update custom" do
    patch :update, id: @custom, custom: { addr: @custom.addr, customDesc: @custom.customDesc, customLove: @custom.customLove, level: @custom.level, linkMan: @custom.linkMan, linkTel: @custom.linkTel, mainMan: @custom.mainMan, mainTel: @custom.mainTel, name: @custom.name, operName: @custom.operName }
    assert_redirected_to custom_path(assigns(:custom))
  end

  test "should destroy custom" do
    assert_difference('Custom.count', -1) do
      delete :destroy, id: @custom
    end

    assert_redirected_to customs_path
  end
end
