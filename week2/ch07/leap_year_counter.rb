puts 'Give me a starting year!'
start_year = gets.chomp.to_i
puts 'Give me an ending year!'
end_year= gets.chomp.to_i
while start_year>=end_year
  if start_year % 400 == 0
    puts start_year
  elsif start_year%100 ==0
  elsif start_year%4==0
    puts start_year
      leapyears= leapyears+1
 start_year+start_year+1
end
