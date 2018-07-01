def improved_ask question
  while true
    puts question
    reply = gets.chomp.downcase
    if reply == 'yes'
      return true #replacing the answer part
    elsif reply == 'no'
      return false
    else
      puts 'Please answer "yes" or "no".'
    end
  end
end

puts 'Hello, and thank you for...'
puts
improved_ask 'Do you like eating tacos?'
improved_ask 'Do you like eating burritos?'
wets_bed = improved_ask 'Do you wet the bed?'
improved_ask 'Do you like eating sopapillas?'
puts 'Just a few more questions...'
improved_ask 'Do you like drinking horchata?'
improved_ask 'Do you like eating flautas?'
puts
puts 'DEBRIEFING:'
puts 'Thank you for...'
puts
puts wets_bed
