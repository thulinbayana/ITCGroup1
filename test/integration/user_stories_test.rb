require 'test_helper'

class UserStoriesTest < ActionDispatch::IntegrationTest
  fixtures :products
  
    test "buying a product" do
    LineItem.delete_all
    Order.delete_all
    guide_book = products(:guide)
	
	get "/"
    assert_response :success
    assert_template "index"

    xml_http_request :post, '/line_items', product_id: guide_book.id
    assert_response :success 
	
    cart = Cart.find(session[:cart_id])
    assert_equal 1, cart.line_items.size
    assert_equal guide_book, cart.line_items[0].product

    get "/orders/new"
    assert_response :success
    assert_template "new"

    post_via_redirect "/orders",
                      order: { name:     "Lebogang Lebese",
                               address:  "123 Main street",
                               email:    "Lebs@example.com",
                               pay_type: "Check" }
    assert_response :success
    assert_template "index"
    cart = Cart.find(session[:cart_id])
    assert_equal 0, cart.line_items.size

    orders = Order.all
    assert_equal 1, orders.size
    order = orders[0]

    assert_equal "Lebogang Lebese",      order.name
    assert_equal "123 Main street",   order.address
    assert_equal "Lebs@example.com", order.email
    assert_equal "Check",            order.pay_type

    assert_equal 1, order.line_items.size
    line_item = order.line_items[0]
    assert_equal guide_book, line_item.product
	
	mail = ActionMailer::Base.deliveries.last
    assert_equal ["Lebs@example.com"], mail.to
    assert_equal 'Lebogang Lebese <depot@example.com>', mail[:from].value
    assert_equal "X-axis Bookstore Order Confirmation", mail.subject

  end
end
