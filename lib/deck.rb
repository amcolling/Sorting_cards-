require './lib/card'
require 'pry'

class Deck
  attr_accessor :cards

  def initialize(cards)
    @cards = cards
  end

  def count(num)
    num
  end

  def sorting_the_deck
    (@cards.length - 1).times do |i|
      while i > 0
        if @cards[i].card_value > @cards[i + 1].card_value
          @cards[i], @cards[i + 1] = @cards[i + 1], @cards[i]
        else
          break
        end
         i -= 1
        end
      end
  end
  @cards
end
