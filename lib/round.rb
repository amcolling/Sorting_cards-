require 'pry'
class Round
attr_accessor :deck,
            :guesses,
            :number_correct,
            :index_count


  def initialize(deck)
    @deck = deck
    @guesses = []
    @number_correct = 0
    @index_count = 0
  end

  def current_card
    @deck.cards[@index_count]
  end



  def record_guess(response)
    guesser = Guess.new(response, current_card)
    @guesses << guesser
    if guesser.correct?
      @number_correct += 1
    end
    @index_count += 1
    guesser
  end

  def percent_correct
    (@number_correct.to_f/@guesses.count) * 100

  end


end
