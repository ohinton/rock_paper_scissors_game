require('pry')

class String
  define_method(:game) do |player_two|
    if self == "rock" && player_two == "scissors" || self == "paper" && player_two == "rock" || self == "scissors" && player_two == "paper"
      winner = "Player One!"
    elsif self == "rock" && player_two == "paper" || self == "paper" && player_two == "scissors" || self == "scissors" && player_two == "rock"
      winner = "Player Two!"
    else
      winner = "No one! It's a tie!"
    end
    winner
  end
end
