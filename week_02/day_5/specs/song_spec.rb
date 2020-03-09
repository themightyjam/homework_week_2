require('minitest/autorun')
require('minitest/reporters')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../song')
require_relative('../room')
require_relative('../guests')

class SongTest < Minitest::Test

def setup()
  @song = Song.new("Live Forever", "Rock")
end

def test_has_name()
  assert_equal("Live Forever", @song.name)
end

def test_has_genre()
  assert_equal("Rock", @song.genre)
end






end
