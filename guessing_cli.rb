# Code your solution here!
def run_guessing_game
  @game = true
  loop do
    #get_random_number
    guess = rand(6)+1
    user_input = get_input
    if user_input.numeric?
      guess = user_input.to_i
    elsif user_input == "exit"
      exit_game
      break
    else
      puts "Invalid input!"
    end
    
    guessed_right?? win : lose
  end
end

def get_input
  puts "Guess a number between 1 and 6."
  user_input = gets.strip
end

# def get_random_number
#   @number = rand(6)+1
# end

def guessed_right?
  @number == @guess
end

def win
  puts "You guessed the correct number!"
end

def lose
  puts "The computer guessed #{@number}."
end

def exit_game
  puts "Goodbye!"
  @game = false
end

class String
  def numeric?
    Float(self) rescue false
  end
end
