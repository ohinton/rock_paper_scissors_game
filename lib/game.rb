require('pry')

class String
  define_method(:game) do |player_two|
    if self == "rock" && player_two == "scissors"
      winner = "Player One!"
    elsif self == "rock" && player_two == "paper"
      winner = "Player Two!"
    elsif self == "rock" && player_two == "rock"
      winner = "No one! It's a tie!"
    elsif self == "paper" && player_two == "rock"
      winner = "Player One!"
    elsif self == "paper" && player_two == "scissors"
      winner = "Player Two!"
    elsif self == "paper" && player_two == "paper"
      winner = "No one! It's a tie!"
    elsif self == "scissors" && player_two == "paper"
      winner = "Player One!"
    elsif self == "scissors" && player_two == "rock"
      winner = "Player Two!"
    else self == "scissors" && player_two == "scissors"
      winner = "No one! It's a tie!"
    end
    winner
  end
end
