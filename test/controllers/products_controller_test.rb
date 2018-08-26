require 'test_helper'

class ProductsControllerTest < ActionController::TestCase
  setup do
    @product = products(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:products)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create product" do
    assert_difference('Product.count') do
      post :create, product: { call_price: @product.call_price, category_id: @product.category_id, manufactors_name: @product.manufactors_name, name: @product.name, product_desc: @product.product_desc, quantity: @product.quantity, web_price: @product.web_price }
    end

    assert_redirected_to product_path(assigns(:product))
  end

  test "should show product" do
    get :show, id: @product
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @product
    assert_response :success
  end

  test "should update product" do
    patch :update, id: @product, product: { call_price: @product.call_price, category_id: @product.category_id, manufactors_name: @product.manufactors_name, name: @product.name, product_desc: @product.product_desc, quantity: @product.quantity, web_price: @product.web_price }
    assert_redirected_to product_path(assigns(:product))
  end

  test "should destroy product" do
    assert_difference('Product.count', -1) do
      delete :destroy, id: @product
    end

    assert_redirected_to products_path
  end
end
