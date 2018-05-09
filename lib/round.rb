require 'pry'
class Round
attr_accessor :deck,
            :guesses,
            :number_correct


  def initialize(deck)
  @deck = deck
  @guesses = []
  @number_correct = 0
  end

  def current_card
    @deck.cards[0]
  end

  def record_guess(response)
    guesser = Guess.new(response, current_card)
    @guesses << guesser
    guesser
  end

  def number_correct?
    if @guesses.first.correct?
      @number_correct += 1
    else
      @guesses.first
    end
  end












end
