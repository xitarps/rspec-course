class CardGame
  attr_reader :cards

  def start
    @cards = Deck.build
  end
end
