require 'test_helper'

class MiddlewaresControllerTest < ActionController::TestCase
  setup do
    @middleware = middlewares(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:middlewares)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create middleware" do
    assert_difference('Middleware.count') do
      post :create, middleware: { phone_price: @middleware.phone_price, phone_price_desc: @middleware.phone_price_desc, product_id: @middleware.product_id, quantity: @middleware.quantity, web_price: @middleware.web_price, web_price_desc: @middleware.web_price_desc }
    end

    assert_redirected_to middleware_path(assigns(:middleware))
  end

  test "should show middleware" do
    get :show, id: @middleware
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @middleware
    assert_response :success
  end

  test "should update middleware" do
    patch :update, id: @middleware, middleware: { phone_price: @middleware.phone_price, phone_price_desc: @middleware.phone_price_desc, product_id: @middleware.product_id, quantity: @middleware.quantity, web_price: @middleware.web_price, web_price_desc: @middleware.web_price_desc }
    assert_redirected_to middleware_path(assigns(:middleware))
  end

  test "should destroy middleware" do
    assert_difference('Middleware.count', -1) do
      delete :destroy, id: @middleware
    end

    assert_redirected_to middlewares_path
  end
end
