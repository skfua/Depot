require 'test_helper'

class ProductsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @product = products(:three)
    @update = {
      title: 'Lorem ipsum',
      description: 'Wibbles are fun!',
      image_url: 'http://kor.ill.in.ua/m/190x120/1866013.jpg',
      price: 19.95
    }
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nill assigns(:products)
  end

  test "should get new" do
    get :new
    assert_response :success

  end

  test "should create product" do
    assert_difference('Product.count') do
      post :create, product: @update
    end

    assert_redirected_to product_path(assigns(:product))
  end

  # test "should show product" do
  #   get product_url(@product)
  #   assert_response :success
  # end

  # test "should get edit" do
  #   get edit_product_url(@product)
  #   assert_response :success
  # end

  test "should update product" do
    patch :update, id: @product, product: @update
    assert_redirected_to product_path(assigns(:product))
  end

  # test "should destroy product" do
  #   assert_difference('Product.count', -1) do
  #     delete product_url(@product)
  #   end
  #
  #   assert_redirected_to products_url
  # end
end
