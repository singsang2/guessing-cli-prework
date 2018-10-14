# Code your solution here!
def run_guessing_game
  
  
end

def get_input
  puts "Input:"
  user_input = gets.strip.to_i
  
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
