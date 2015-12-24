require 'test_helper'

class StEnderecosControllerTest < ActionController::TestCase
  setup do
    @st_endereco = st_enderecos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:st_enderecos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create st_endereco" do
    assert_difference('StEndereco.count') do
      post :create, st_endereco: { desc_cep: @st_endereco.desc_cep, desc_complemento: @st_endereco.desc_complemento, desc_lote: @st_endereco.desc_lote, desc_numero: @st_endereco.desc_numero, desc_quadra: @st_endereco.desc_quadra, latitude: @st_endereco.latitude, longitude: @st_endereco.longitude, nome_rua: @st_endereco.nome_rua, st_bairro_id: @st_endereco.st_bairro_id, st_cidade_id: @st_endereco.st_cidade_id }
    end

    assert_redirected_to st_endereco_path(assigns(:st_endereco))
  end

  test "should show st_endereco" do
    get :show, id: @st_endereco
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @st_endereco
    assert_response :success
  end

  test "should update st_endereco" do
    patch :update, id: @st_endereco, st_endereco: { desc_cep: @st_endereco.desc_cep, desc_complemento: @st_endereco.desc_complemento, desc_lote: @st_endereco.desc_lote, desc_numero: @st_endereco.desc_numero, desc_quadra: @st_endereco.desc_quadra, latitude: @st_endereco.latitude, longitude: @st_endereco.longitude, nome_rua: @st_endereco.nome_rua, st_bairro_id: @st_endereco.st_bairro_id, st_cidade_id: @st_endereco.st_cidade_id }
    assert_redirected_to st_endereco_path(assigns(:st_endereco))
  end

  test "should destroy st_endereco" do
    assert_difference('StEndereco.count', -1) do
      delete :destroy, id: @st_endereco
    end

    assert_redirected_to st_enderecos_path
  end
end
