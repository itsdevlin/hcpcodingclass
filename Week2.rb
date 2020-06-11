# Week 2 
# https://repl.it/

# Homework

# “FizzBuzz”
# Write a program that prints the numbers from 1 to 100. 
# But for multiples of three print "Fizz" instead of the number 
# and for the multiples of five print "Buzz". 
# For numbers which are multiples of both three and five print "FizzBuzz".

n = 0

loop do
  n = n + 1
    if n % 3 == 0 && n % 5 == 0 
      puts "FizzBuzz" 
    elsif n % 5 == 0
      puts "Buzz"
    elsif
      n % 3 == 0
      puts "Fizz"
    else
      puts n  
    end  
  break if n == 100
end


# Create rock, paper, scissors!
# Create two variables to keep score - player and computer
# Set both to 0
# Create a 'Choices' array of strings with 3 options: rock, paper, scissors
# Create a function caleld 'play' that takes a player's throw and compares it to a random selection from 'choices'
# If player selects 'rock' and computer's choice is 'paper', computer wins, so increment computer's score by 1


# Conceptually, this works

player_score = 0
cpu_score = 0 
game_over = false

until game_over == true do 

  until player_score == 5 || cpu_score == 5 do
    cpu_throw = rand(1..3)
    puts "Your turn. What do you throw?"
    player_throw = gets.chomp.to_i

    if
      player_throw > 3
      puts "That's not an option, try again"
    elsif 
      player_throw > cpu_throw 
      player_score = player_score + 1
      puts "CPU threw #{cpu_throw}, you win!"
      puts "Current Score: You: #{player_score} CPU: #{cpu_score}"
    else
      cpu_score = cpu_score + 1
      puts "CPU threw #{cpu_throw}, you lose!"
      puts "Current Score: You: #{player_score} CPU: #{cpu_score}"
    end

  end

game_over = true

  if player_score == 5
    puts "Game Over, you win! #{player_score} to #{cpu_score}"
  else 
    puts "Game Over, you lose! #{cpu_score} to #{player_score}"
  end

end

