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
    # loan amount
    loop do
    prompt("Please enter the total loan amount as an integer.")
    loan_amount = gets.chomp

    if loan_amount.empty? || loan_amount.to_f < 0
    prompt("That doesn't look valid! Pls enter a positive number.")
    else
      break
    end

    # monthly interest
    loop do
      prompt("Enter monthly interest for loan in percentages. ex. 10 for 10%.")
      monthly_interest = gets.chomp

    if monthly_interest.empty? || monthly_interest.to_f < 0
      prompt("That doesn't look valid! Pls enter a positive number")
    else
      monthly_interest = monthly_interest.to_f / 100
     break
     end

    # loan duration in months
    loop do
      prompt("Please enter the length of the loan in years.")
      loan_duration_months = gets.chomp # to_i ? tää pitäs varmaa olla vuosissa x12
      if loan_duration_months.empty? || monthly_interest.to_f < 0
        prompt("Hmm... that doesnt look like a valid input!")
      else
        loan_duration_months = loan_duration_months.to_i * 12
      break
    end

    # formula here print statement
    monthly_payment = loan_amount.to_f() * (monthly_interest / (1 - (1 + monthly_interest)**(-loan_duration_months)))

    prompt("Your monthly payment is: $#{format('%.2f', monthly_payment)}")

    # recalculate?
    prompt("Do you want to calculate again? Y for recalc.")
    answer = gets.chomp
    break unless answer.downcase == 'y'
  end
# outer loop ends
end

