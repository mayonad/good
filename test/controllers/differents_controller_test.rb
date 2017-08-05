require 'test_helper'

class DifferentsControllerTest < ActionController::TestCase
  setup do
    @different = differents(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:differents)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create different" do
    assert_difference('Different.count') do
      post :create, different: { availability: @different.availability, bed: @different.bed, bedroom: @different.bedroom, description: @different.description, guests: @different.guests, houserules: @different.houserules, name: @different.name, picture: @different.picture, price: @different.price, type: @different.type, wifi: @different.wifi }
    end

    assert_redirected_to different_path(assigns(:different))
  end

  test "should show different" do
    get :show, id: @different
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @different
    assert_response :success
  end

  test "should update different" do
    patch :update, id: @different, different: { availability: @different.availability, bed: @different.bed, bedroom: @different.bedroom, description: @different.description, guests: @different.guests, houserules: @different.houserules, name: @different.name, picture: @different.picture, price: @different.price, type: @different.type, wifi: @different.wifi }
    assert_redirected_to different_path(assigns(:different))
  end

  test "should destroy different" do
    assert_difference('Different.count', -1) do
      delete :destroy, id: @different
    end

    assert_redirected_to differents_path
  end
end
