def prompt(message)
  puts("=> #{message}")
end

def valid_number?(num)
  num.to_i != 0
end

def operator_to_message(op)
  case op
  when '1'
    'Adding'
  when '2'
    'Subtracting'
  when '3'
    'Multiplying'
  when '4'
    'Dividing'
  end
end

prompt("Welcome to the calculator! Please enter your name.")
name = ''
loop do
  name = gets.chomp

  if name.empty?
    prompt("That doesnt look valid!")
  else
    break
  end
end

prompt("Hi, #{name}.")

loop do
  number1 = ''
  loop do
    prompt("Please input a number.")
    number1 = gets.chomp

    if valid_number?(number1)
      break
    else
      prompt("Hmm... that doesnt look like a valid input!")
    end
  end

  number2 = ''
    loop do
      prompt("Please input another number.")
      number2 = gets.chomp

      if valid_number?(number2)
        break
      else
        prompt("Hmm... that doesnt look like a valid input!")
      end
    end
  operator_prompt = <<-MSG
  Input 1 for addition.
  Input 2 for subtraction.
  Input 3 for multiplication.
  Input 4 for division.
MSG
    # loop do
    prompt(operator_prompt) 
  operator = ''
  loop do
  operator = gets.chomp
 if %w(1 2 3 4).include?(operator)
 else  prompt("Must choose 1-4")
 end

  result = case operator
           when '1'
      number1.to_i + number2.to_i
           when '2'
      number1.to_i - number2.to_i
           when '3'
      number1.to_i * number2.to_i
           when '4'
      number1.to_f / number2.to_f
           end

  prompt("#{operator_to_message(operator)} the two numbers!")
  sleep(1.5)
  prompt("The result is #{result}")
loop do
  prompt("Do you want to calculate again? Y for recalc.")
  answer = gets.chomp
  break unless answer.downcase == 'y'
end
  # prompt("Thank you for using the calculator!")
  end
end
