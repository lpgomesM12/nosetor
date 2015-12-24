require 'test_helper'

class StEstadosControllerTest < ActionController::TestCase
  setup do
    @st_estado = st_estados(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:st_estados)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create st_estado" do
    assert_difference('StEstado.count') do
      post :create, st_estado: { nome_estado: @st_estado.nome_estado, sigl_estado: @st_estado.sigl_estado }
    end

    assert_redirected_to st_estado_path(assigns(:st_estado))
  end

  test "should show st_estado" do
    get :show, id: @st_estado
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @st_estado
    assert_response :success
  end

  test "should update st_estado" do
    patch :update, id: @st_estado, st_estado: { nome_estado: @st_estado.nome_estado, sigl_estado: @st_estado.sigl_estado }
    assert_redirected_to st_estado_path(assigns(:st_estado))
  end

  test "should destroy st_estado" do
    assert_difference('StEstado.count', -1) do
      delete :destroy, id: @st_estado
    end

    assert_redirected_to st_estados_path
  end
end
