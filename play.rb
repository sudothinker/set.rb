require File.join(File.dirname(__FILE__), 'deck')
require File.join(File.dirname(__FILE__), 'card')
require File.join(File.dirname(__FILE__), 'game')
require File.join(File.dirname(__FILE__), 'set')

deck = Deck.new

deck.cards.shuffle.each_slice(12) do |slice|
  p "Playing game: #{slice.map(&:to_s)}"
  game = Game.new(slice)
  p game.solution.to_s
end