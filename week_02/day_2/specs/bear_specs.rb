require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../river.rb')
require_relative('../bear.rb')
require_relative('../fish.rb')

class BearTest < MiniTest::Test

  def setup()
    @bear = Bear.new("Yogi", "Grizzly")
  end

def test_bear_has_name()
  assert_equal("Yogi", @bear.name)
end

def test_bear_has_type()
  assert_equal("Grizzly", @bear.type)
end

def test_bear_can_take_fish()
  @bear.add_food(@Fish1)
  assert_equal(1, @bear.food_count)
end



end
