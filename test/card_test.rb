require 'minitest/autorun'
require 'minitest/pride'
require './lib/card'
require './lib/guess'

class CardTest < Minitest::Test
  def test_it_exists
    card = Card.new("Ace", "Spades")
    assert_instance_of Card, card
  end
end
