require './lib/card'
require 'pry'

class Deck
  attr_accessor :cards,
                :card_deck

  def initialize(cards)
    @cards = cards
    @card_deck = []
  end

  def count(num)
    num
  end

  def sorting_the_deck
    sorted_deck = []
    @cards.each_with_index do |card, i|
      sorted_deck << card if i == 0
      y = i
      while y >= 0
        sorted_deck << card if y == 0
        if card.card_value < sorted_deck[y - 1].card_value
          sorted_deck[y - 2] = card
        end
         i -= 1
        end
      end
  end
  @cards
end
