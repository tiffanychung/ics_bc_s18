puts 'Speak to Grammy!'
answer = ()
while (answer!= 'BYE')
  answer=gets.chomp
  if answer == answer.upcase
    puts 'NO, NOT SINCE ' + (1920 + (rand(30))).to_s + '!'
  else
    puts 'HUH?! SPEAK UP, SONNY!'
  end
end
