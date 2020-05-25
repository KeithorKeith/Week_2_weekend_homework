class Room

    attr_reader :name #:playlist

    def initialize(name)
        @name = name
        @guests = []
        @playlist = []
    end

    def check_guest_into_room(guest)
        @guests.push(guest)
    end

    def number_of_guests_in_room()
        return @guests.length()
    end

    def check_guest_out_of_room()
        @guests.clear()
    end

    def add_song_to_room(song)
        @playlist.push(song)
    end

    def number_of_songs_in_room()
        return @playlist.length()
    end
end
