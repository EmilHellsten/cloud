VALID_CHOICES = %w(rock lizard spock scissors paper)

#TO_DO_LIST: Typing the full word "rock" or "lizard" is tiring. Update the program so the user can type "r" for "rock," "p" for "paper," etc. Note that if you do bonus #1, you'll have two words that start with "s." How do you resolve that?

#switched to symbols as keys... if key = string need =>
win_conditions = {
  "rock" => ["lizard", "scissors"],
  "lizard" => ["spock", "paper"],
  "spock" => ["scissors", "rock"],
  "scissors" => ["paper", "lizard"],
  "paper" => ["rock", "spock"]
}

def prompt(message)
  puts("==> #{message}")
end

computer_score = 0
human_score = 0
choice = ''
#TÄÄ EI OIKEESTAAN TOIMI keep_playing = true

#outer loop
while human_score || computer_score < 3 #does not exit loop at >3 OISKO joku keep_playing = true ja break human || comp == 3
  
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    choice = gets.chomp.downcase
    if VALID_CHOICES.include?(choice)
    break
    else prompt("That's not valid.")
    end
  end

  computer_choice = VALID_CHOICES.sample
  
  prompt("You chose: #{choice}; computer chose: #{computer_choice}.")

  if choice == computer_choice
    prompt("Seems you both chose the same thing. It's a tie!")
  elsif win_conditions.fetch(choice).include?(computer_choice)
    prompt("#{choice} beats #{computer_choice}. You win!")
    human_score = human_score + 1
  else
    prompt("#{computer_choice} beats #{choice}. Computer wins!")
    computer_score = computer_score + 1
  end 
  prompt("Human score is: #{human_score}; Computer score is #{computer_score}.")
  # TÄÄ EI TOIMI JOS EKA LINE ON KEEP_PLAYING break if human_score || computer_score == 3
end #LOPPUUN JOKU CONGRATS ON WINNING/LOSING/JOTAIN
