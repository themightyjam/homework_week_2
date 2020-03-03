require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../river.rb')
require_relative('../bear.rb')
require_relative('../fish.rb')

class RiverTest < MiniTest::Test

  def setup()
    @river = River.new("Amazon", 6400)
    @fish1 = Fish.new("bubbles", 1)
    @fish2 = Fish.new("goldie", 2)
    @fish3 = Fish.new("Willy", 3)
    @fish4 = Fish.new("Magic", 1)
  end


  def test_river_has_name
    assert_equal("Amazon", @river.name)
  end

  def test_fish_is_taken()
    @river.lose_fish(@fish1)
    assert_equal(3, @river.fish_count())
  end
end
