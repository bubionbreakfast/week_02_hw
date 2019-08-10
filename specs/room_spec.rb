require('minitest/autorun')
require('minitest/rg')
require_relative('../room')
require_relative('../guest')


class TestRoom < Minitest::Test

  def setup()
    @room1 = Room.new(1, 5, 5)
    @room2 = Room.new(2, 4, 4)
    @room3 = Room.new(3, 6, 15)
    @guest1 = Guest.new("John", "Purple Rain", 20)

  end

  def test_get_room_number()
    assert_equal(1, @room1.number)
    assert_equal(2, @room2.number)
    assert_equal(3, @room3.number)
  end

  def test_get_room_capacity()
    assert_equal(5, @room1.capacity)
    assert_equal(4, @room2.capacity)
    assert_equal(6, @room3.capacity)
  end

  def test_get_number_of_guests_booked()
    assert_equal(0, @room1.booked_count())
  end

  def test_add_guest_to_room()
    @room1.add_guest(@guest1)
    assert_equal(1, @room1.booked_count())
  end

  def test_remove_guest_from_room()
    @room1.remove_guest(@guest1)
    assert_equal(0, @room1.booked_count())
  end

  def test_cannot_add_more_guests_than_room_capacity()
    @room1.add_guest(@guest1)
    @room1.add_guest(@guest2)
    @room1.add_guest(@guest1)
    @room1.add_guest(@guest1)
    @room1.add_guest(@guest1)
    @room1.add_guest(@guest1)
    assert_equal("overbooked!", @room1.overbooked())
  end

  def test_get_favourite_song()
    @room1.add_song(@guest1)
    assert_equal("Purple Rain", @guest1.favourite_song())
  end



end
