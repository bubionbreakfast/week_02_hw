class Karaoke

attr_reader :name, :rooms, :till


def initialize(name, till)
  @name = name
  @rooms = []
  @till = till
end


def get_rooms()
  return @rooms.count()
end

# def add_room(room)
#   @rooms += room
# end

end
