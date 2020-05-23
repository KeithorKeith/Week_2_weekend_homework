class Room

    attr_reader :name

    def initialize(name)
        @name = name
        @room = []
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

end
