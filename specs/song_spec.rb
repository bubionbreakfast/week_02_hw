require('minitest/autorun')
require('minitest/rg')
require_relative('../song')

class TestSong < Minitest::Test

  def setup()
    @song1 = Song.new("Purple Rain")
    @song2 = Song.new("Hotel Calefornia")
    @song3 = Song.new("Fake Plastic Trees")

  end

  def test_get_song_name()
    assert_equal("Purple Rain", @song1.name)
    assert_equal("Hotel Calefornia", @song2.name)
    assert_equal("Fake Plastic Treess", @song3.name)
  end


end
