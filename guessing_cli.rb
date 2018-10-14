# Code your solution here!
def run_guessing_game
  
  
end

def get_input
  puts "Guess a number: "
  user_input = gets.strip
  if user_input.numeric?
    @guess = user_input.to_i
  elsif user_input == "exit"
    exit_game
  else
    puts "Invalid input!"
  end
end

def get_random_number
  @number = rand
end

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
end

class String
  def numeric?
    Float(self) rescue false
  end
end
