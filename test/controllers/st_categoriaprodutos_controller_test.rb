require 'test_helper'

class StCategoriaprodutosControllerTest < ActionController::TestCase
  setup do
    @st_categoriaproduto = st_categoriaprodutos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:st_categoriaprodutos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create st_categoriaproduto" do
    assert_difference('StCategoriaproduto.count') do
      post :create, st_categoriaproduto: { nome_categoria: @st_categoriaproduto.nome_categoria }
    end

    assert_redirected_to st_categoriaproduto_path(assigns(:st_categoriaproduto))
  end

  test "should show st_categoriaproduto" do
    get :show, id: @st_categoriaproduto
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @st_categoriaproduto
    assert_response :success
  end

  test "should update st_categoriaproduto" do
    patch :update, id: @st_categoriaproduto, st_categoriaproduto: { nome_categoria: @st_categoriaproduto.nome_categoria }
    assert_redirected_to st_categoriaproduto_path(assigns(:st_categoriaproduto))
  end

  test "should destroy st_categoriaproduto" do
    assert_difference('StCategoriaproduto.count', -1) do
      delete :destroy, id: @st_categoriaproduto
    end

    assert_redirected_to st_categoriaprodutos_path
  end
end
