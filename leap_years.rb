puts("Please input start year.")
start = gets.chomp.to_i 
#start = rand(5..10)

puts("Please input the end year.")
ends = gets.chomp.to_i
#rand(11.. 15)
arr = Array(start..ends)


arr.each { |leap| if leap %4 == 0
  puts "The following is a leap year: #{leap}"
                  end
}

#puts arr
#puts start
#puts ends
