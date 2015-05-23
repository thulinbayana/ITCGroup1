require 'test_helper'

class NotifierTest < ActionMailer::TestCase
  test "order_received" do
    mail = Notifier.order_received(orders(:one))
    assert_equal "X-axis Bookstore Confirmation", mail.subject
    assert_equal ["Lebs@example.org"], mail.to
    assert_equal ["depot@example.com"], mail.from
    assert_match /1 x Music Notation: A South African Guide/, mail.body.encoded
  end

  test "order_shipped" do
    mail = Notifier.order_shipped(orders(:one))
    assert_equal "X-axis Bookstore Order shipped", mail.subject
    assert_equal ["Lebs@example.org"], mail.to
    assert_equal ["depot@example.com"], mail.from
    assert_match /<td>1&times;<\/td>\s*<td>Music Notation: A South African Guide<\/td>/, mail.body.encoded
  end

end
