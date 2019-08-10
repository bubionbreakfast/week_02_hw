require('minitest/autorun')
require('minitest/rg')
require_relative('../guest')

class TestGuest < Minitest::Test

  def setup()
    @guest1 = Guest.new("John", "Purple Rain", 20)
    @guest2 = Guest.new("Ann", "Fake Plastic Trees", 28)
    @guest3 = Guest.new("Jojo", "Hotel Calefornia", 50)
  end

  def test_get_guest_name()
    assert_equal("John", @guest1.name)
    assert_equal("Ann", @guest2.name)
    assert_equal("Jojo", @guest3.name)
  end

  def test_get_favourite_song()
    assert_equal("Purple Rain", @guest1.favourite_song)
  end

  def test_get_wallet_balence()
    assert_equal(50, @guest3.wallet)
    assert_equal(20, @guest1.wallet)
    assert_equal(28, @guest2.wallet)
  end

  def test_can_alter_guest_wallet()
    @guest1.alter(@price)
    assert_equal(20, @guest1.wallet())
  end


end
