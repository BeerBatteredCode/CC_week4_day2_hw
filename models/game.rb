# require('pry-byebug')

class Game
  def initialize(num1, num2)
    @num1 = num1
    @num2 = num2
  end

  def rock_paper_scissors
    string_length = @num1.length + @num2.length
    return "Paper wins! " if string_length == 9
    return "Rock wins! " if string_length == 12
    return "Scissors wins! " if string_length == 13
    return "DRAW! " if string_length == 8 || 10 || 16
  end

  def determine_winner
    if rock_paper_scissors == "Paper wins! " && @num1 == "paper"
      return "Player 1 wins!"
    end
    if rock_paper_scissors == "Scissors wins! " && @num1 == "scissors"
      return "Player 1 wins!"
    end
    if rock_paper_scissors == "Rock wins! " && @num1 == "rock"
      return "Player 1 wins!"
    end
    if rock_paper_scissors == "Paper wins! " && @num2 == "paper"
      return "Player 2 wins!"
    end
    if rock_paper_scissors == "Scissors wins! " && @num2 == "scissors"
      return "Player 2 wins!"
    end
    if rock_paper_scissors == "Rock wins! " && @num2 == "rock"
      return "Player 2 wins!"
    end
    if rock_paper_scissors == "DRAW! "
      return "Try again!"
    end
  end
end

# test = Game.new("paper", "scissors")
#
# binding.pry
# nil
