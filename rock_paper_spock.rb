VALID_CHOICES = %w(rock lizard spock scissors paper)

win_conditions = {
  "rock" => ["lizard", "scissors"],
  "lizard" => ["spock", "paper"],
  "spock" => ["scissors", "rock"],
  "scissors" => ["paper", "lizard"],
  "paper" => ["rock", "spock"]
}

lose_conditions = {
  "rock" => ["spock", "paper"],
  "lizard" => ["scissors", "rock"],
  "spock" => ["paper", "lizard"],
  "scissors" => ["rock", "spock"],
  "paper" => ["lizard", "scissors"]
}

#EI VÄLTTÄMÄTTÄ TARVI
#tie_conditions = {
  #"rock" => ["rock"],
  #"lizard" => ["lizard"],
  #"spock" => ["spock"],
  #"scissors" => ["scissors"],
  #"paper" => ["paper"]
#}

def prompt(message)
  puts("==> #{message}")
end

#set variables TIE WIN LOSS?
human_score = 0
computer_score = 0

def score_update #(human_won, computer_won)
  if human_won == true
    human_score + 1
  elsif computer_won == true
    computer_score + 1
  else human_won && computer_won = false
end

#compare choice and computer_choice
def result #(choice, computer_choice)
  if computer_choice = win_conditions.include?[choice]
    human_win = true
    return human_win
  else
  computer_choice = lose_conditions.include?[choice]
  computer_win = true
  return computer_win
end

#outer loop starts
loop do #tää on ny väärin. Pitäs olla outer loop

  choice = ''
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    choice = gets.chomp

    break if VALID_CHOICES.include?(choice)
  else prompt("That's not a valid choice.")
    break
  end
end #55-67

computer_choice = VALID_CHOICES.sample
  
prompt("You chose: #{choice}; computer chose: #{computer_choice}.")

result
score_update

prompt("You currently have #{human_score} wins and the computer has #{computer_score} points.")
if human_score = 3 || computer_score = 3
  break
else
end
prompt("Thank you for playing! Kekbye.")
end
end
