def playback(input)
  puts input
  input = gets.chomp
  if input == 'Nothing!'
    puts 'Okay, fine!'
  elsif input == 'I have a lot to say'
    puts "I don't have time for that right now!"
  else
  puts "You said: #{input}"
  end
end

playback("What do you want to say?: ")
