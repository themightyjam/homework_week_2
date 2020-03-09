require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../guests')
require_relative('../song')
require_relative('../room')

class GuestsTest < Minitest::Test

def setup()
  @guests = Guests.new("Bob Harris", 54)
end

def test_guest_has_name()
assert_equal("Bob Harris", @guests.name)
end

def test_guest_has_age()
  assert_equal(54, @guests.age)
end

end
