count = 0
puts 'WHAT?!'
while count < 3
  answer = gets.chomp
  if answer =='BYE'
    count = count +1
    puts 'I WANT TO KEEP TALKING!'
  else
    count = 0
    if answer.upcase == answer
      puts 'NO, NOT SINCE ' + (1920 + (rand(30))).to_s + '!'
    else
      puts 'HUH?! SPEAK UP, SONNY!'
    end
  end
end
