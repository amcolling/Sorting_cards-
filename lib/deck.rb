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
    loop do

      swapped = false
      (@cards.length - 1).times do |i|
        if @cards[i] > @cards[i + 1]
          @cards[i], @cards[i + 1] = @cards[i + 1], @cards[i]
          swapped = true
        end
        end
        break
      end
  end
end
