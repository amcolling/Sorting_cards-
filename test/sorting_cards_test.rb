require 'minitest/autorun'
require 'minitest/pride'
require './lib/sorting_cards'
require './lib/guess'

# card = Card.new("Ace", "Spades")
# card.value
# => "Ace"
# card.suit
# => "Spades"
class CardTest < Minitest::Test
  def test_it_exists
    card = Card.new("Ace", "Spades")
    card_1 = Card.new("10", "Hearts")
    assert_instance_of Card, card
    assert_instance_of Card, card_1
  end





  # card = Card.new("10", "Hearts")
  # guess = Guess.new("10 of Hearts", card)
  # guess.card
  # => #<Card:0x007ffdf1820a90 @value="10", @suit="Hearts">
  # guess.response
  # => "10 of Hearts"
  # guess.correct?
  # => true
  # guess.feedback
  # => "Correct!"


end
