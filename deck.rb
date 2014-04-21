class Deck
  def initialize

  end

  def cards
    @_cards ||= begin
      cards = []
      Card::PATTERNS.each do |pattern|
        Card::COUNTS.each do |count|
          Card::SHAPES.each do |shape|
            Card::COLORS.each do |color|
              cards << Card.new(color, shape, count, pattern)
            end
          end
        end
      end
      cards
    end
  end
end