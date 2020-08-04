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
    # With updating leaderboard after each turn
    # puts "Updating leaderboard...\n Learderboard now: #{leaderboard_scores.sort! { |x, y| y <=> x }}"
    [score, position]
  end
end

def validate_leaderboard_players?(players)
  players >= 1 && players <= (2 * 10 ** 5) ? true : false
end

def validate_alice_games?(games)
  games >= 1 && games <= (2 * 10 ** 5) ? true : false
end

def validate_scores?(scores)
  scores.each do |score|
    return false if (score < 0) || (score > (10 ** 9))
  end
  return true
end

leaderboard_players = gets.chomp.to_i
scores = gets.chomp.split(" ").map { |i| i.to_i }.take(leaderboard_players).sort! { |x, y| y <=> x }

alice_games = gets.chomp.to_i
alice_scores = gets.chomp.split(" ").map { |i| i.to_i }.take(alice_games).sort

unless (validate_leaderboard_players? leaderboard_players) && (validate_alice_games? alice_games)
  puts "Invalid leaderboard or alice games"
  return
end

unless (validate_scores? scores) && (validate_scores? alice_scores)
  puts "Invalid leaderboard or alice scores"
  return
end

puts "Leaderboard: #{scores}"
puts "Alice Score: #{alice_scores}"

climbing_leaderboard(scores, alice_scores).each_with_index do |position, index|
  puts "Game #{index + 1} Score is #{position[0]} and rank is #{position[1]}"
end
