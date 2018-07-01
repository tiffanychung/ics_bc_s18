def new_roman_numeral input
  while input < 1|| input > 2999
    puts 'give a number between 1 and 2999'
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
i = 'I'* idiv#if the end product ends up being four of the same numeral we switch it to the fancy version
  if i == 'IIII' && v != 'V'
    i = 'IV'
  elsif i == 'IIII' #making sure to account for when it's not just 4 like for ex 14 where it would be XIV
    v = 'IX'
    i = ''
  end
  if x == 'XXXX' && l != 'L'
    x = 'XL'
  elsif x == 'XXXX'
    l = 'XC'
    x = ''
  end
  if c == 'CCCC' && d != 'D'
    c = 'CD'
  elsif c == 'CCCC'
    d = 'CM'
    c = ''
  end
#put final roman numeral together and 'print' it
  puts m + d + c + l + x + v + i
end
number = gets.chomp.to_i
new_roman_numeral(number)
