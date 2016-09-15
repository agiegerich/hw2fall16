class WrongNumberOfPlayersError < StandardError ; end
class NoSuchStrategyError < StandardError ; end

def rps_game_winner(game)
  raise WrongNumberOfPlayersError unless game.length == 2
  game.each { |player_strategy| raise NoSuchStrategyError unless player_strategy[1] =~ /\A[rps]\z/i }

  # beats(x) == y mean x beats y
  beats = {'s' => 'p', 'p' => 'r', 'r' => 's'}
  if beats[game[1][1].downcase] == game[0][1].downcase then game[1] else game[0] end
end

def rps_tournament_winner(tournament)
  # base case
  if tournament[0][0].kind_of? String then return rps_game_winner(tournament) end

  return rps_game_winner [rps_tournament_winner(tournament[0]), rps_tournament_winner(tournament[1])]
end