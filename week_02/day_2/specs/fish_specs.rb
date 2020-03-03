require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../river.rb')
require_relative('../bear.rb')
require_relative('../fish.rb')

class FishTest < MiniTest::Test

  def setup()
    @fish = Fish.new("Harpy", 4)
  end

def test_fish_has_name()
  assert_equal("Harpy", @fish.name)
end

def test_fish_has_age()
  assert_equal(4, @fish.age)

end

end
