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


# def test_can_add_rooms()
#   assert_equal(3, @karaoke.add_room())
# end


end
