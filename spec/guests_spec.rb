require("minitest/autorun")
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative("../rooms")
require_relative("../songs")

class GuestTest < MiniTest::Test

  def setup
    
  end