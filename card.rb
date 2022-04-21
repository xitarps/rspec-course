class Card
  attr_accessor :rank, :suit, :type

  def initialize(hash = {})
    @rank = hash[:rank] || 'Unitialized rank'
    @suit = hash[:suit] || 'Unitialized suit'
    @type = build_type
  end

  private

  def build_type
    "#{rank} of #{suit}"
  end
end
