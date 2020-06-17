# Create rock, paper, scissors!
# Create two variables to keep score - player and computer
# Set both to 0
# Create a 'Choices' array of strings with 3 options: rock, paper, scissors
# Create a function caleld 'play' that takes a player's throw and compares it to a random selection from 'choices'
# If player selects 'rock' and computer's choice is 'paper', computer wins, so increment computer's score by 1


player_score = 0
cpu_score = 0 
game_over = false
options = ["rock","paper","scissors"]

until game_over == true do 

  until player_score == 5 || cpu_score == 5 do
    cpu_throw_index = rand(0..2)
    puts "Rock, Paper, Scissors. What do you throw?"
    player_throw_string = gets.chomp.downcase
    player_throw_index = options.index(player_throw_string)
    cpu_throw_string = options.fetch(cpu_throw_index)

    if
      options.include?(player_throw_string) == false
      puts "That's not an option, try again"
      
    elsif 
      player_throw_index == cpu_throw_index
      puts "You both threw a #{options[player_throw_index]}"  

    elsif 
      player_throw_index == 0 
        if 
          cpu_throw_index == 1
          cpu_score = cpu_score + 1
          puts "CPU threw #{cpu_throw_string}, you lose!"
          puts "Current Score: You: #{player_score} CPU: #{cpu_score}"
        else 
          player_score = player_score + 1
          puts "CPU threw #{cpu_throw_string}, you win!"
          puts "Current Score: You: #{player_score} CPU: #{cpu_score}"
        end

    elsif 
      player_throw_index == 1 
        if 
          cpu_throw_index == 2
          cpu_score = cpu_score + 1
          puts "CPU threw #{cpu_throw_string}, you lose!"
          puts "Current Score: You: #{player_score} CPU: #{cpu_score}"
        else 
          player_score = player_score + 1
          puts "CPU threw #{cpu_throw_string}, you win!"
          puts "Current Score: You: #{player_score} CPU: #{cpu_score}"
        end

    else 
      player_throw_index == 2 
        if 
          cpu_throw_index == 0
          cpu_score = cpu_score + 1
          puts "CPU threw #{cpu_throw_string}, you lose!"
          puts "Current Score: You: #{player_score} CPU: #{cpu_score}"
        else 
          player_score = player_score + 1
          puts "CPU threw #{cpu_throw_string}, you win!"
          puts "Current Score: You: #{player_score} CPU: #{cpu_score}"
        end

      end

  end

game_over = true

  if player_score == 5
    puts "Game Over, you win! #{player_score} to #{cpu_score}"
  else 
    puts "Game Over, you lose! #{cpu_score} to #{player_score}"
  end

end
