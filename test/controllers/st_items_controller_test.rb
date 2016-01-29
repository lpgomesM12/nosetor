require 'test_helper'

class StItemsControllerTest < ActionController::TestCase
  setup do
    @st_item = st_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:st_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create st_item" do
    assert_difference('StItem.count') do
      post :create, st_item: { nome_produto: @st_item.nome_produto, st_categoriaproduto_id: @st_item.st_categoriaproduto_id }
    end

    assert_redirected_to st_item_path(assigns(:st_item))
  end

  test "should show st_item" do
    get :show, id: @st_item
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @st_item
    assert_response :success
  end

  test "should update st_item" do
    patch :update, id: @st_item, st_item: { nome_produto: @st_item.nome_produto, st_categoriaproduto_id: @st_item.st_categoriaproduto_id }
    assert_redirected_to st_item_path(assigns(:st_item))
  end

  test "should destroy st_item" do
    assert_difference('StItem.count', -1) do
      delete :destroy, id: @st_item
    end

    assert_redirected_to st_items_path
  end
end
