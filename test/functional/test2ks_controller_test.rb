require 'test_helper'

class Test2ksControllerTest < ActionController::TestCase
  setup do
    @test2k = test2ks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:test2ks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create test2k" do
    assert_difference('Test2k.count') do
      post :create, test2k: { age: @test2k.age, name: @test2k.name, tmp: @test2k.tmp }
    end

    assert_redirected_to test2k_path(assigns(:test2k))
  end

  test "should show test2k" do
    get :show, id: @test2k
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @test2k
    assert_response :success
  end

  test "should update test2k" do
    put :update, id: @test2k, test2k: { age: @test2k.age, name: @test2k.name, tmp: @test2k.tmp }
    assert_redirected_to test2k_path(assigns(:test2k))
  end

  test "should destroy test2k" do
    assert_difference('Test2k.count', -1) do
      delete :destroy, id: @test2k
    end

    assert_redirected_to test2ks_path
  end
end
