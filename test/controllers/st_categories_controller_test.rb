require 'test_helper'

class StCategoriesControllerTest < ActionController::TestCase
  setup do
    @st_category = st_categories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:st_categories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create st_category" do
    assert_difference('StCategory.count') do
      post :create, st_category: { nome_categoria: @st_category.nome_categoria }
    end

    assert_redirected_to st_category_path(assigns(:st_category))
  end

  test "should show st_category" do
    get :show, id: @st_category
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @st_category
    assert_response :success
  end

  test "should update st_category" do
    patch :update, id: @st_category, st_category: { nome_categoria: @st_category.nome_categoria }
    assert_redirected_to st_category_path(assigns(:st_category))
  end

  test "should destroy st_category" do
    assert_difference('StCategory.count', -1) do
      delete :destroy, id: @st_category
    end

    assert_redirected_to st_categories_path
  end
end
