# require("pry")

require("minitest/autorun")
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative("../guests")
require_relative("../songs")
require_relative("../rooms")

class RoomTest < MiniTest::Test

    def setup
        @room = Room.new("Kanto")


        @guest_1 = Guest.new("Lucy")
        @guest_2 = Guest.new("Clara")
        @guest_3 = Guest.new("Stu")

        @song_1 = Song.new("Kanto theme")
        @song_2 = Song.new("Johto theme")
        @song_3 = Song.new("Hoenn theme")
    end

    def test_check_guest_into_room()
        @room.check_guest_into_room(@guest_1)
        assert_equal(1, @room.number_of_guests_in_room())
    end

    def test_check_guest_out_of_room()
        @room.check_guest_into_room(@guest_2)
        @room.check_guest_out_of_room()
        assert_equal(0, @room.number_of_guests_in_room())
    end

    def test_add_song_to_room()
        @room.add_song_to_room(@song_1)
        assert_equal(1, @room.number_of_songs_in_room())
    end



end