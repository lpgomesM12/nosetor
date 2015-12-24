require 'test_helper'

class StCidadesControllerTest < ActionController::TestCase
  setup do
    @st_cidade = st_cidades(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:st_cidades)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create st_cidade" do
    assert_difference('StCidade.count') do
      post :create, st_cidade: { nome_cidade: @st_cidade.nome_cidade, st_estado_id: @st_cidade.st_estado_id }
    end

    assert_redirected_to st_cidade_path(assigns(:st_cidade))
  end

  test "should show st_cidade" do
    get :show, id: @st_cidade
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @st_cidade
    assert_response :success
  end

  test "should update st_cidade" do
    patch :update, id: @st_cidade, st_cidade: { nome_cidade: @st_cidade.nome_cidade, st_estado_id: @st_cidade.st_estado_id }
    assert_redirected_to st_cidade_path(assigns(:st_cidade))
  end

  test "should destroy st_cidade" do
    assert_difference('StCidade.count', -1) do
      delete :destroy, id: @st_cidade
    end

    assert_redirected_to st_cidades_path
  end
end
