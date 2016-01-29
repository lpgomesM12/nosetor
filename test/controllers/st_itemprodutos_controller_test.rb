require 'test_helper'

class StItemprodutosControllerTest < ActionController::TestCase
  setup do
    @st_itemproduto = st_itemprodutos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:st_itemprodutos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create st_itemproduto" do
    assert_difference('StItemproduto.count') do
      post :create, st_itemproduto: { st_item_id: @st_itemproduto.st_item_id, st_produto_id: @st_itemproduto.st_produto_id }
    end

    assert_redirected_to st_itemproduto_path(assigns(:st_itemproduto))
  end

  test "should show st_itemproduto" do
    get :show, id: @st_itemproduto
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @st_itemproduto
    assert_response :success
  end

  test "should update st_itemproduto" do
    patch :update, id: @st_itemproduto, st_itemproduto: { st_item_id: @st_itemproduto.st_item_id, st_produto_id: @st_itemproduto.st_produto_id }
    assert_redirected_to st_itemproduto_path(assigns(:st_itemproduto))
  end

  test "should destroy st_itemproduto" do
    assert_difference('StItemproduto.count', -1) do
      delete :destroy, id: @st_itemproduto
    end

    assert_redirected_to st_itemprodutos_path
  end
end
