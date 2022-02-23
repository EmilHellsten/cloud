def deaf_grandma
  loop do
    puts "Please ask grandma something."
    question = gets.chomp
   
    unless question == question.upcase
      puts "HUH?! SPEAK UP, SONNY!"
    else
      puts "NO, NOT SINCE #{rand(1930..1950)}!"
    end
      if question == 'BYE'
        break
      end  
  end
end
# granny doesnt want you to leave. Should pretend to not hear you when you input "BYE!" doesnt break out of loop if it isnt typed out 3 times in a row
deaf_grandma
