require("minitest/autorun")
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative("../rooms")
require_relative("../songs")
require_relative("../guests")

class SongTest < MiniTest::Test

    def setup
        @song = Song.new("Childish")
    end

end