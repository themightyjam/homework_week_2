require('minitest/autorun')
require('minitest/reporters')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../room')
require_relative('../song')
require_relative('../guests')

class RoomTest < Minitest::Test

def setup()
  @room = Room.new(42, 2,)

  @guest1 = Guests.new("Bob Harris", 54)
  @guest2 = Guests.new("Charlotte", 28)


end

def test_room_has_number()
  assert_equal(42, @room.number)
end

def test_room_has_beds()
  assert_equal(2, @room.beds)
end

end
