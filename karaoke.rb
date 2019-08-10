class Karaoke

attr_reader :name, :rooms, :till
attr_writer :till


def initialize(name, till)
  @name = name
  @rooms = []
  @till = till
end


def get_rooms()
  return @rooms.count()
end

def vend(guest, room)
  # if @rooms.overbooked() != "overbooked!"
      @till += room.price()
      # @guest1 -= room.price()
      guest.alter(room.price)
    # end
end

# def add_room(room)
#   @rooms += room
# end

end
