require 'part2.rb'

describe "#rps_game_winner" do
  it "should be defined" do
#    lambda { rps_game_winner([["X", "P"], ["Y", "S"]]) }.should_not raise_error
    expect(lambda {rps_game_winner([["X", "P"], ["Y", "S"]])}).not_to raise_error
  end
  # this is given for free in the outline
  it "should raise WrongNumberOfPlayersError if there are not exactly two players" do
#    lambda { rps_game_winner([ ["Allen", "S"] ]) }.should raise_error, "No error raised for incorrect number of players"
    expect(lambda { rps_game_winner([ ["Allen", "S"] ]) }).to raise_error(WrongNumberOfPlayersError)
  end

  rock = ['A', 'R']
  paper = ['B', 'p']
  scissors = ['C', 's']
  rock_lower = ['D', 'r']
  it 'should have paper beat rock' do
    expect(rps_game_winner([paper, rock])).to be paper
  end

  it 'shouldnt matter with respect to order' do
    expect(rps_game_winner([rock, paper])).to be paper
  end

  it 'should have rock beat scissors' do
    expect(rps_game_winner([rock, scissors])).to be rock
  end

  it 'should have scissors beat paper' do
    expect(rps_game_winner([paper, scissors])).to be scissors
  end

  it 'should have the first player win in a tie' do
    expect(rps_game_winner([rock, rock_lower])).to be rock
    expect(rps_game_winner([rock_lower, rock])).to be rock_lower
  end
end

describe "#rps_tournament_winner" do
  it "should be defined" do
#    lambda { rps_tournament_winner([["X", "P"], ["Y", "S"]]) }.should_not raise_error
    expect(lambda { rps_tournament_winner([["X", "P"], ["Y", "S"]]) }).not_to raise_error
  end
end
