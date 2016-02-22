require 'test_helper'

class StTamanhoprodutosControllerTest < ActionController::TestCase
  setup do
    @st_tamanhoproduto = st_tamanhoprodutos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:st_tamanhoprodutos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create st_tamanhoproduto" do
    assert_difference('StTamanhoproduto.count') do
      post :create, st_tamanhoproduto: { desc_tamanho: @st_tamanhoproduto.desc_tamanho, st_produtos_id: @st_tamanhoproduto.st_produtos_id, valr_produto: @st_tamanhoproduto.valr_produto }
    end

    assert_redirected_to st_tamanhoproduto_path(assigns(:st_tamanhoproduto))
  end

  test "should show st_tamanhoproduto" do
    get :show, id: @st_tamanhoproduto
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @st_tamanhoproduto
    assert_response :success
  end

  test "should update st_tamanhoproduto" do
    patch :update, id: @st_tamanhoproduto, st_tamanhoproduto: { desc_tamanho: @st_tamanhoproduto.desc_tamanho, st_produtos_id: @st_tamanhoproduto.st_produtos_id, valr_produto: @st_tamanhoproduto.valr_produto }
    assert_redirected_to st_tamanhoproduto_path(assigns(:st_tamanhoproduto))
  end

  test "should destroy st_tamanhoproduto" do
    assert_difference('StTamanhoproduto.count', -1) do
      delete :destroy, id: @st_tamanhoproduto
    end

    assert_redirected_to st_tamanhoprodutos_path
  end
end
