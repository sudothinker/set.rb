class Set
  def initialize(cards)
    @cards = cards
  end

  # They all have the same number, or they have three different numbers.
  # They all have the same symbol, or they have three different symbols.
  # They all have the same shading, or they have three different shadings.
  # They all have the same color, or they have three different colors.
  # The rules of Set are summarized by: If you can sort a group of three cards into "Two of ____ and one of _____," then it is not a set.
  def valid?
    [:color, :shape, :count, :pattern].all? do |att|
      (same?(@cards, att) || different?(@cards, att))
    end
  end

  def to_s
    @cards.map(&:to_s)
  end

  private
  def different?(cards, attribute)
    card1, card2, card3 = cards
    return (card1.send(attribute) != card2.send(attribute)) && (card2.send(attribute) != card3.send(attribute)) && (card1.send(attribute) != card3.send(attribute))
  end

  def same?(cards, attribute)
    card1, card2, card3 = cards
    return (card1.send(attribute) == card2.send(attribute)) && (card2.send(attribute) == card3.send(attribute))
  end
end