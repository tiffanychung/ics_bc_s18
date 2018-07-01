def old_roman_numerals input
#what happens when input is out of bounds
  while input <1 || input > 2999
      puts 'enter a number between 1 and 2999 (inclusive)'
      input = gets.chomp.to_i
  end
#making leftovers
 mmod = input%1000
 dmod = input%500
 cmod = input%100
 lmod= input%50
 xmod = input%10
 vmod = input%5
#how many of each roman numeral there should be by dividing the bigger leftover one step above it
#for ex if input was 54 then cmod = 50 vmod= 4 (all other mods would make something but not matter
# when we get to the div part because they don't make a whole integer and thus be zero) so then ldiv = 1 and idiv= 4 
mdiv = input/1000
ddiv = mmod/500
cdiv =dmod/100
ldiv= cmod/50
xdiv = lmod/10
vdiv = xmod/5
idiv = vmod/1
#making each roman numeral according to how many there should be
 m = 'M'* mdiv
 d = 'D'* ddiv
 c = 'C'* cdiv
 l = 'L'* ldiv
 x = 'X'* xdiv
 v = 'V'* vdiv
 i = 'I'* idiv
 #putting together the final roman numeral
 puts m + d + c + l + x + v + i
end
number = gets.chomp.to_i #since input is a string when you get it back
old_roman_numerals(number) #calling our method and passing the input as the parameter
