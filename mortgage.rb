def prompt(message)
  puts("=> #{message}")
end

prompt("Welcome to the mortgage calculator! Please enter your name.")
name = ''
loop do
  name = gets.chomp

  if name.empty?
    prompt("That doesnt look valid!")
  else
    break
  end
end

# greeting
prompt("Hi, #{name}.")

# Initialize variables outside loop
loan_amount = ''
monthly_interest = ''
loan_duration_months = ''


# Outer loop start
loop do

#  loan amount
    loop do
      prompt("Please enter the total loan amount as an integer.")
      loan_amount = gets.chomp #.to_i?

      if loan_amount.empty? || loan_amount.to_f < 0
      prompt("Hmm... that doesnt look like a valid input! Pls enter a positive number")
    else
      break
    end
  end


# monthly interest
    loop do
      prompt("Please enter the monthly interest for the loan in percentages.")
      monthly_interest = gets.chomp #to_f 2 decimals?

        if monthly_interest.empty? || monthly_interest.to_f < 0
      prompt("Hmm... that doesnt look like a valid input! Pls enter a positive number")
    else
      break
    end
  end

# loan duration in months
    loop do
      prompt("Please enter the length of the loan in years.")
      loan_duration_months = gets.chomp # to_i ? tää pitäs varmaa olla vuosissa x12
      if valid_number?(loan_duration_months)
        loan_duration_months = loan_duration_months * 12
        break
      else
        prompt("Hmm... that doesnt look like a valid input!")
      end
    end

# formula here print statement


# recalculate?
  loop do
    prompt("Do you want to calculate again? Y for recalc.")
    answer = gets.chomp
    break unless answer.downcase == 'y'
  end
# outer loop ends
end
