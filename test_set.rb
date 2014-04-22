require_relative "set"
require_relative "card"

require "test/unit"
 
class TestSet < Test::Unit::TestCase

  def test_simple
    cards = [
      Card.new(:red, :oval, 1, :solid),
      Card.new(:red, :oval, 1, :blank),
      Card.new(:red, :oval, 1, :triped)
    ]
    set = Set.new(cards)
    assert_equal(true, set.valid?)
  end

  def test_hard
    cards = [
      Card.new(:red, :triangle, 1, :solid),
      Card.new(:red, :oval, 1, :blank),
      Card.new(:red, :squigle, 1, :triped)
    ]
    set = Set.new(cards)
    assert_equal(true, set.valid?)
  end

  def test_mega_set
    cards = [
      Card.new(:blue, :triangle, 1, :solid),
      Card.new(:red, :oval, 2, :blank),
      Card.new(:green, :squigle, 3, :triped)
    ]
    set = Set.new(cards)
    assert_equal(true, set.valid?)
  end

  def test_no_set
    cards = [
      Card.new(:blue, :triangle, 1, :solid),
      Card.new(:blue, :oval, 2, :blank),
      Card.new(:green, :squigle, 3, :triped)
    ]
    set = Set.new(cards)
    assert_equal(false, set.valid?)
  end
end