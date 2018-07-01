def new_roman_numeral input
  while input < 1|| input > 2999
    puts 'give a number between 1 and 2999'
    input = gets.chomp.to_i
  end
#seperating the input into parts
mod_m = input%1000
mod_d= input%500
mod_c= input%100
mod_l= input%50
mod_x= input%10
mod_v= input%5
#finding how many of each roman numeral there should be
  m_div = input/1000
  d_div = mod_m/500
  c_div = mod_d/100
  l_div = mod_c/50
  x_div = mod_l/10
  v_div = mod_x/5
  i_div = mod_v/1
#making each roman numeral according to how many there should be before the fancy switching
  m = 'M'* m_div
  d = 'D'* d_div
  c = 'C'* c_div
  l = 'L'* l_div
  x = 'X' * x_div
  v = 'V' * v_div
  i = 'I' * i_div
#if the end product ends up being four of the same numeral we switch it to the fancy version
  if i == 'IIII' && v != 'V'
    i = 'IV'
  elsif i == 'IIII'
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
