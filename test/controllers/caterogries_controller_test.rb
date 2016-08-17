require 'test_helper'

class CaterogriesControllerTest < ActionController::TestCase
  setup do
    @caterogry = caterogries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:caterogries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create caterogry" do
    assert_difference('Caterogry.count') do
      post :create, caterogry: { name: @caterogry.name, user_id: @caterogry.user_id }
    end

    assert_redirected_to caterogry_path(assigns(:caterogry))
  end

  test "should show caterogry" do
    get :show, id: @caterogry
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @caterogry
    assert_response :success
  end

  test "should update caterogry" do
    patch :update, id: @caterogry, caterogry: { name: @caterogry.name, user_id: @caterogry.user_id }
    assert_redirected_to caterogry_path(assigns(:caterogry))
  end

  test "should destroy caterogry" do
    assert_difference('Caterogry.count', -1) do
      delete :destroy, id: @caterogry
    end

    assert_redirected_to caterogries_path
  end
end
