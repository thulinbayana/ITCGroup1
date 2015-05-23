require 'test_helper'

class ProductsControllerTest < ActionController::TestCase
  setup do
    @product = products(:one)
	@update = {
		:title => 'Student Counselling and Development - Contemporary issues in the Southern African Context',
		:author => 'Litha Beekman Charl Cilliers and Andre de Jager',
		:isbn => '978-1-86888-681-4',
		:descrption => 'As a ground-breaking scholarly contribution to the field of psychology, this is a comprehensive peer-reviewed publication for those working in Student Counselling and Development (SCD) units in higher education (HE).',
		:image_url => 'Student-Counselling--and-Development.jpg',
		:price => 330.00
	}
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
      post :create, product: @update
    end

    assert_redirected_to product_path(assigns(:product))
  end
  #...
  test "should show product" do
    get :show, id: @product
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @product
    assert_response :success
  end

  test "should update product" do
    put :update, id: @product.to_param, product: @update
    assert_redirected_to product_path(assigns(:product))
  end

  test "should destroy product" do
    assert_difference('Product.count', -1) do
      delete :destroy, id: @product
    end

    assert_redirected_to products_path
  end
end
