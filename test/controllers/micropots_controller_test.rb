require 'test_helper'

class MicropotsControllerTest < ActionController::TestCase
  setup do
    @micropot = micropots(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:micropots)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create micropot" do
    assert_difference('Micropot.count') do
      post :create, micropot: { content: @micropot.content, user_id: @micropot.user_id }
    end

    assert_redirected_to micropot_path(assigns(:micropot))
  end

  test "should show micropot" do
    get :show, id: @micropot
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @micropot
    assert_response :success
  end

  test "should update micropot" do
    patch :update, id: @micropot, micropot: { content: @micropot.content, user_id: @micropot.user_id }
    assert_redirected_to micropot_path(assigns(:micropot))
  end

  test "should destroy micropot" do
    assert_difference('Micropot.count', -1) do
      delete :destroy, id: @micropot
    end

    assert_redirected_to micropots_path
  end
end
