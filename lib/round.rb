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
  end

  def number_correct?
# # correct_card = Card.new(@guesses.guess.split(" ").first, @guesses.guess.split(" ").last)
#     if guesser.correct? # ["3 of hearts"]
#       @number_correct += 1
#       else
#         guess
#     end
  end












end
