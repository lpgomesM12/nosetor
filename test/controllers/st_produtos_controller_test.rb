require 'test_helper'

class StProdutosControllerTest < ActionController::TestCase
  setup do
    @st_produto = st_produtos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:st_produtos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create st_produto" do
    assert_difference('StProduto.count') do
      post :create, st_produto: { nome_produto: @st_produto.nome_produto, st_categoriaproduto_id: @st_produto.st_categoriaproduto_id, st_empresa_id: @st_produto.st_empresa_id, valr_produto: @st_produto.valr_produto }
    end

    assert_redirected_to st_produto_path(assigns(:st_produto))
  end

  test "should show st_produto" do
    get :show, id: @st_produto
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @st_produto
    assert_response :success
  end

  test "should update st_produto" do
    patch :update, id: @st_produto, st_produto: { nome_produto: @st_produto.nome_produto, st_categoriaproduto_id: @st_produto.st_categoriaproduto_id, st_empresa_id: @st_produto.st_empresa_id, valr_produto: @st_produto.valr_produto }
    assert_redirected_to st_produto_path(assigns(:st_produto))
  end

  test "should destroy st_produto" do
    assert_difference('StProduto.count', -1) do
      delete :destroy, id: @st_produto
    end

    assert_redirected_to st_produtos_path
  end
end
