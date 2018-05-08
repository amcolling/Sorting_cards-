class Round
attr_reader :deck,
            :guesses

  def initialize(deck)
  @deck = deck
  @guesses = []
  end

  def current_card(card)
    card
  end

  def record_guess(response)
    guess = Guess.new(response, current_card)
    @guesses << guess
    guess
  end







end
