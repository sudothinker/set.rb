class Game
  def initialize(cards)
    @cards = cards
  end

  def solution
    @cards.combination(3) do |set|
      set = Set.new(set)
      return set if set.valid?
    end
    return false
  end
end