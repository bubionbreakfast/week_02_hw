class Guest

attr_reader :name, :favourite_song, :wallet
attr_writer :wallet

def initialize(name, favourite_song, wallet)
  @name = name
  @favourite_song = favourite_song
  @wallet = wallet
end

def alter(price)
  @wallet += price
end


end
