require 'test_helper'

class StEmpresasControllerTest < ActionController::TestCase
  setup do
    @st_empresa = st_empresas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:st_empresas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create st_empresa" do
    assert_difference('StEmpresa.count') do
      post :create, st_empresa: { desc_anuncioempresa: @st_empresa.desc_anuncioempresa, desc_cnpj: @st_empresa.desc_cnpj, desc_palavrachave: @st_empresa.desc_palavrachave, nome_empresa: @st_empresa.nome_empresa, st_category_id: @st_empresa.st_category_id, st_endereco_id: @st_empresa.st_endereco_id, tele_telefone1: @st_empresa.tele_telefone1, tele_telefone: @st_empresa.tele_telefone }
    end

    assert_redirected_to st_empresa_path(assigns(:st_empresa))
  end

  test "should show st_empresa" do
    get :show, id: @st_empresa
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @st_empresa
    assert_response :success
  end

  test "should update st_empresa" do
    patch :update, id: @st_empresa, st_empresa: { desc_anuncioempresa: @st_empresa.desc_anuncioempresa, desc_cnpj: @st_empresa.desc_cnpj, desc_palavrachave: @st_empresa.desc_palavrachave, nome_empresa: @st_empresa.nome_empresa, st_category_id: @st_empresa.st_category_id, st_endereco_id: @st_empresa.st_endereco_id, tele_telefone1: @st_empresa.tele_telefone1, tele_telefone: @st_empresa.tele_telefone }
    assert_redirected_to st_empresa_path(assigns(:st_empresa))
  end

  test "should destroy st_empresa" do
    assert_difference('StEmpresa.count', -1) do
      delete :destroy, id: @st_empresa
    end

    assert_redirected_to st_empresas_path
  end
end
