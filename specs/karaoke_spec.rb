require('minitest/autorun')
require('minitest/rg')
require_relative('../room')
require_relative('../guest')
require_relative('../karaoke')
require_relative('../song')

class TestKaraoke < MiniTest::Test

  def setup()
    @room1 = Room.new(1, 5, 5)
    @room2 = Room.new(2, 4, 4)
    @room3 = Room.new(3, 6, 15)
    @guest1 = Guest.new("John", "Purple Rain", 20)
    @karaoke = Karaoke.new("Voces", 100)
  end


def test_get_number_of_rooms()
    assert_equal(0, @karaoke.get_rooms())
end

def test_get_karaoke_till()
  assert_equal(100, @karaoke.till() )
end

def test_karaoke_can_vend_a_guest_a_place_in_room_till_increases
    @room1.add_guest(@guest1)
    @karaoke.vend(@guest1, @room1)
    assert_equal(105.00, @karaoke.till())
    assert_equal(15, @guest1.wallet)
  end


# def test_can_add_rooms()
#   assert_equal(3, @karaoke.add_room())
# end


end
