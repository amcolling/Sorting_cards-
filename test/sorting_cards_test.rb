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
    assert_instance_of Card, card
  end

  # Along with the card, we also have a guess. Users will enter a guess and we’re going to have to figure out if the guess is correct. Use TDD to create this interaction pattern:
  #
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
  # We also want to make sure that incorrect guesses are also handled properly.
  #
  # card = Card.new("Queen", "Clubs")
  # guess = Guess.new("2 of Diamonds", card)
  # guess.card
  # => #<Card:0x007ffdf1820a90 @value = "Queen", @suit="Clubs">
  # guess.response
  # => "2 of Diamonds"
  # guess.correct?
  # => false
  # guess.feedback
  # => "Incorrect."






end
