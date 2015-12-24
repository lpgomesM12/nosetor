require 'test_helper'

class StBairrosControllerTest < ActionController::TestCase
  setup do
    @st_bairro = st_bairros(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:st_bairros)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create st_bairro" do
    assert_difference('StBairro.count') do
      post :create, st_bairro: { latitude: @st_bairro.latitude, longitude: @st_bairro.longitude, nome_bairro: @st_bairro.nome_bairro, st_cidade_id: @st_bairro.st_cidade_id }
    end

    assert_redirected_to st_bairro_path(assigns(:st_bairro))
  end

  test "should show st_bairro" do
    get :show, id: @st_bairro
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @st_bairro
    assert_response :success
  end

  test "should update st_bairro" do
    patch :update, id: @st_bairro, st_bairro: { latitude: @st_bairro.latitude, longitude: @st_bairro.longitude, nome_bairro: @st_bairro.nome_bairro, st_cidade_id: @st_bairro.st_cidade_id }
    assert_redirected_to st_bairro_path(assigns(:st_bairro))
  end

  test "should destroy st_bairro" do
    assert_difference('StBairro.count', -1) do
      delete :destroy, id: @st_bairro
    end

    assert_redirected_to st_bairros_path
  end
end
