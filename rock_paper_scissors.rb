VALID_CHOICES = ['rock', 'paper', 'scissors']

def prompt(message)
  puts("==> #{message}")
end

def display_results(player, computer)
  if (player == 'rock' && computer == 'scissors') ||
    (player == 'paper' && computer == 'rock') ||
    (player == 'scissors' && computer == 'paper')
    prompt("You won!")
  elsif
    (player == 'rock' && computer == 'paper') ||
    (player == 'paper' && computer == 'scissors') ||
    (player == 'scissors' && computer == 'rock')
      prompt("Computer won!")
  else
    prompt("It's a tie!")
  end
end

loop do
  choice = ''
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    choice = gets.chomp

  if VALID_CHOICES.include?(choice)
    break
  else prompt("That's not a valid choice.")
    end
  end

  computer_choice = VALID_CHOICES.sample

  prompt("You chose: #{choice}; computer chose: #{computer_choice}.")

  display_results(choice, computer_choice)

  prompt("Do you want to play again? Y for yes.")
  break if gets.chomp.downcase != 'y'.downcase
end

 prompt("Thank you for playing! Kekbye.")
