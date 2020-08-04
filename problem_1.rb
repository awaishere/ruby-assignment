UPPER_LIMIT = 2 * 10 ** 5
SCORE_LIMIT = 10 ** 9

# calculating alice ranks against each game
def climbing_leaderboard(leaderboard_scores, alice_score)
  positions = alice_score.map do |score|
    position = -1
    leaderboard_scores.uniq.each_with_index do |value, index|
      if score >= value
        position = index + 1
        break
      end

      if index + 1 == leaderboard_scores.uniq.length
        position = index + 2
      end
    end
    leaderboard_scores.push(score)
    # In case, Updating leaderboard after each game played by alice
    # puts "Updating leaderboard...\n Learderboard now: #{leaderboard_players.sort!.reverse}"
    [score, position]
  end
end

# validating number of players
def validate_leaderboard_players?(players)
  players >= 1 && players <= UPPER_LIMIT ? true : false
end

# validating games limit played by alice
def validate_alice_games?(games)
  games >= 1 && games <= UPPER_LIMIT ? true : false
end

# validating scores limit
def validate_scores?(scores)
  scores.each do |score|
    return false if (score < 0) || (score > SCORE_LIMIT)
  end
  return true
end

# main
# taking input from the user in the required format
print "Enter number of players on the leaderboard: "
leaderboard_players = gets.chomp.to_i
print "Enter player's leaderboard scores: "
scores = gets.chomp.split(" ").map { |i| i.to_i }.take(leaderboard_players).sort!.reverse

print "Enter number of games played by alice: "
alice_games = gets.chomp.to_i
print "Enter scores made by alice in each game: "
alice_scores = gets.chomp.split(" ").map { |i| i.to_i }.take(alice_games).sort

# validations
unless (validate_leaderboard_players? leaderboard_players) && (validate_alice_games? alice_games)
  puts "Invalid leaderboard or alice games"
  return
end

unless (validate_scores? scores) && (validate_scores? alice_scores)
  puts "Invalid leaderboard or alice scores"
  return
end

# display
puts "Leaderboard: #{scores}"
puts "Alice Score: #{alice_scores}"

# display output
climbing_leaderboard(scores, alice_scores).each_with_index do |position, index|
  puts "Game #{index + 1} Score is #{position[0]} and rank is #{position[1]}"
end
