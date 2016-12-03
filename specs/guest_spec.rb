require("minitest/autorun")
require("minitest/rg")
require_relative("../guest_class.rb")

class GuestSpec < MiniTest::Test


  def test_can_create_guest
    guest = Guest.new("Matthew")
    actual =guest.guestname
    expected = "Matthew"
    assert_equal(expected, actual)
  end

end
