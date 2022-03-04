VALID_CHOICES = %w(rock lizard spock scissors paper)

def prompt(message)
  puts("==> #{message}")
end

win_conditions = {
  "rock" => ["lizard", "scissors"],
  "lizard" => ["spock", "paper"],
  "spock" => ["scissors", "rock"],
  "scissors" => ["paper", "lizard"],
  "paper" => ["rock", "spock"]
}

computer_score = 0
human_score = 0
choice = ''

#contractions = {
 # "rock" => ["r", "ro", "roc"],
  #"lizard" => ["l", "li", "liz","liza","lizar"],
  #"spock" => ["sp","spo", "spoc"],
  #"scissors" => ["sc","sci", "scis", "sciss", "scisso", "scissor"],
  #"paper" => ["p", "pa", "pap", "pape"]
#}
while human_score < 3 && computer_score < 3
  
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    choice = gets.chomp.downcase
   
    case choice
      when choice == "r" || "ro" || "roc"
        choice = "rock"
      when choice == "l" || "li" || "liz" || "liza" || "lizar"
        choice = "lizard"
      when choice == "sp" || "spo" || "spoc"
        choice = "spock"
      when choice == "sc" || "sci" || "scis" || "sciss" || "scisso" || "scissor"
        choice = "scissors"
      when choice == "p" || "pa" || "pap" || "pape"
        choice = "paper"
    end
    
    
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

end

prompt("Thanks for playing.")
