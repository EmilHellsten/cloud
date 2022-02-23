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

deaf_grandma
