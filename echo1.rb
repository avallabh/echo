def playback(input)
   puts "You said: #{input}"
end

puts "What do you want to say?: "
input = gets.chomp
puts playback(input)
