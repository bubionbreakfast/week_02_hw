class Room

  attr_reader :number, :capacity, :booked, :price, :songs
  attr_writer :songs

  def initialize(number, capacity, price)
    @number = number
    @capacity = capacity
    @booked = []
    @price = price
    @songs = []
  end

  def booked_count()
    return @booked.count()
  end

  def add_guest(guest)
    @booked << guest
  end

  def remove_guest(guest)
    return @booked.delete(guest)
  end

  def overbooked()
    if @booked.length >= capacity
      return "overbooked!"
    end
  end

  def inculdes_song(favourite_song)
    @songs.include?(favourite_song)
  end

  def add_song(favourite_song)
    @songs << favourite_song
  end

  def whoop(favourite_song)
    if @songs.include?(favourite_song)
      return "Whoop!"
  end
end

end
