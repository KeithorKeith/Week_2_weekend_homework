class Room

    attr_reader :name #:playlist

    def initialize(name)
        @name = name
        @room = []
        # @playlist = []
    end

    def check_guest_into_room(guest)
        @room.push(guest)
    end

    def number_of_guests_in_room()
        return @room.length()
    end

    def check_guest_out_of_room()
        @room.clear()
    end

    def add_song_to_room(song)
        @room.push(song)
    end

    def number_of_songs_in_room()
        return @room.length()
    end
end
