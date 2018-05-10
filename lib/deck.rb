require './lib/card'
require 'pry'

class Deck
  attr_accessor :cards

  def initialize(cards)
    @cards = cards
  end

  def count(num)
  num
  binding.pry
  end


  # def sorting_the_deck
  #   n = @cards.length
  #
  #   loop do
  #
  #   swapped = false
  #   (n-1).times do |i|
  #     if n[i] > n[i + 1]
  #       n[i], n
  #
  #       end


end
