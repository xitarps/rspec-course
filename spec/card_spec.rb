require_relative '../card'

RSpec.describe Card do
  it 'has a rank' do
    card = Card.new(rank: 'Ace', suit: 'Spades')

    expect(card.rank).to eq('Ace')
  end
  it 'has a suit' do
    card = Card.new(rank: 'Ace', suit: 'Spades')

    expect(card.suit).to eq('Spades')
  end
  it 'has a type' do
    card = Card.new(rank: 'Ace', suit: 'Spades')

    expect(card.type).to eq('Ace of Spades')
  end
end
