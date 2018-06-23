puts 'enter one word per line followed by an enter! if you want to stop, press enter with an empty line! I will return the words back to you!'
array = []
while true
word = gets.chomp.to_s
  if (word !='')
   array.push(word)
  else
    break
  end
end
puts array.sort
