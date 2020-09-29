# card.rb

VALID_SUITES = [:hearts, :spades, :clubs, :diamonds]

class Card
  attr_reader :value, :suit

  def initialize(value, suit)

    if value < 1 || value > 13
      raise ArgumentError, "Invalid Card"
    end

    @value = value
    @suit = suit

    valid_cards = [:hearts, :spades, :clubs, :diamonds]
    unless valid_cards.include? suit
      raise ArgumentError, "Invalid suit"
    end
    end

  def face_cards
    if @value == 1
     return "Ace"
    elsif @value == 11
     return "Jack"
    elsif @value == 12
     return "Queen"
    elsif @value == 13
     return "King"
    end
  end

  def to_s
    if [1,11,12,13].include?(value)
      return "#{self.face_cards} of #{suit.to_s}"
    else
      return "#{value} of #{suit.to_s}"
    end
  end
end
