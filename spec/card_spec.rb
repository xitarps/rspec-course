require_relative '../card'

RSpec.describe Card do
  let(:card) { Card.new(rank: 'Ace', suit: 'Spades') }

  it 'has a rank' do
    expect(card.rank).to eq('Ace')
  end

  it 'has a suit' do
    expect(card.suit).to eq('Spades')
  end

  it 'has a type' do
    expect(card.type).to eq('Ace of Spades')
  end
end
