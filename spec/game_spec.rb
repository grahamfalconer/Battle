require_relative '../lib/game'

describe Game do
  let(:player1) { double("Ash") }
  let(:player2) { double("Brock") }  #game is instance of game
  let(:game) { Game.new(player1, player2) }

  it "ash will take damage when attacked" do
    expect(player1).to receive(:damaged)
    game.attack(player1)
  end
  it "brock will take damage when attacked" do
    expect(player2).to receive(:damaged)
    game.attack(player2)
  end
end

=begin

$count = 0
RSpec.describe "let" do
  let(:count) { $count += 1 }

  it "memoizes the value" do
    expect(count).to eq(1)
    expect(count).to eq(1)
  end

  it "is not cached across examples" do
    expect(count).to eq(2)
  end
end

RSpec.describe "A fulfilled positive message expectation" do
  it "passes" do
    dbl = double("Some Collaborator")
    expect(dbl).to receive(:foo)
    dbl.foo
  end
end
=end
