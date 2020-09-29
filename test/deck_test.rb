require_relative 'test_helper'
# Wave 3

describe Deck do
  # Write tests for the Deck class.
  # What should you test?
    # 1.  Expected Behavior
    # 2.  Edge cases
  before do
    @deck = Deck.new
  end

  it "can be instantiated" do
    expect(@deck).must_be_instance_of Deck
  end

  it "should have 52 cards" do
    expect(@deck.count).must_equal 52
  end

  it "can draw a card" do
    expect(@deck.draw).must_be_instance_of Card
  end

  it "deck can be shuffled" do
    expect(@deck.shuffle).must_be_instance_of Array
  end

  it "has a count method" do
    expect(@deck).must_respond_to :count
    expect(@deck.count).must_be_instance_of Integer
    expect(@deck.count).must_equal 52
  end

end
