require 'test_helper'

class AdventureItemsControllerTest < ActionController::TestCase
  setup do
    @adventure_item = adventure_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:adventure_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create adventure_item" do
    assert_difference('AdventureItem.count') do
      post :create, adventure_item: { category: @adventure_item.category, location: @adventure_item.location, points: @adventure_item.points, title: @adventure_item.title }
    end

    assert_redirected_to adventure_item_path(assigns(:adventure_item))
  end

  test "should show adventure_item" do
    get :show, id: @adventure_item
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @adventure_item
    assert_response :success
  end

  test "should update adventure_item" do
    patch :update, id: @adventure_item, adventure_item: { category: @adventure_item.category, location: @adventure_item.location, points: @adventure_item.points, title: @adventure_item.title }
    assert_redirected_to adventure_item_path(assigns(:adventure_item))
  end

  test "should destroy adventure_item" do
    assert_difference('AdventureItem.count', -1) do
      delete :destroy, id: @adventure_item
    end

    assert_redirected_to adventure_items_path
  end
end
