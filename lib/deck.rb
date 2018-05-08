require './lib/sorting_cards'
require 'pry'

class Deck
  attr_reader :cards,
              :card_1,
              :card_2,
              :card_3

  def initialize(card_value, card_suit)
    @cards = []
    @card_1 = Card.new(card_value, card_suit)
    @card_2 = Card.new(card_value, card_suit)
    @card_3 = Card.new(card_value, card_suit)

  end

  def cards
    binding.pry
    @cards << @card_1
  end
end
