require 'test_helper'

class TestWeightsControllerTest < ActionController::TestCase
  setup do
    @test_weight = test_weights(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:test_weights)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create test_weight" do
    assert_difference('TestWeight.count') do
      post :create, test_weight: { certificateNumber: @test_weight.certificateNumber, dateCalibrated: @test_weight.dateCalibrated }
    end

    assert_redirected_to test_weight_path(assigns(:test_weight))
  end

  test "should show test_weight" do
    get :show, id: @test_weight
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @test_weight
    assert_response :success
  end

  test "should update test_weight" do
    put :update, id: @test_weight, test_weight: { certificateNumber: @test_weight.certificateNumber, dateCalibrated: @test_weight.dateCalibrated }
    assert_redirected_to test_weight_path(assigns(:test_weight))
  end

  test "should destroy test_weight" do
    assert_difference('TestWeight.count', -1) do
      delete :destroy, id: @test_weight
    end

    assert_redirected_to test_weights_path
  end
end
