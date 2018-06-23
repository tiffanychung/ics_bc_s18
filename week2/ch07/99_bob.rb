puts '99 bottles of beer on the wall'
bottles = 99
while (bottles >= 0)
   if bottles == 1
    puts '1 bottle of beer on the wall, 1 bottle of beer.'
    puts 'Take one down and pass it around, no more bottles of beer on the wall.'
    bottles= bottles -1
  elsif (bottles ==0)
    puts 'No more bottles of beer on the wall, no more bottles of beer.'
    puts 'Go to the store and buy some more, 99 bottles of beer on the wall.'
    bottles = bottles -1
  else
    puts bottles.to_s + ' bottles of beer on the wall, ' + bottles.to_s + ' bottles of beer.'
    bottles= bottles-1
    puts 'Take one down and pass it around, '+ bottles.to_s + ' bottles of beer on the wall.'
  end
end
