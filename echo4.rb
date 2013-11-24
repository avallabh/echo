# What do you want to say?
# > I have something prepared
# Ok, where can I find what you want to say?
# > bad_file.txt
# I couldn't find that file.
# Where can I find what you want to say?
# > speech.txt
# Loading speech.txt...
# You said: We're leaving ground
# Then, you said: Will things ever be the same again?
# Then, you said: It's the final countdown
# Finally you said: The final countdown
# Phew! Glad you got all 4 of those things off your chest!

def playback(input)
  puts input
  input = gets.chomp
  if input == 'Nothing!'
    puts 'Okay, fine!'
    exit
  end
  if input == 'I have something prepared'
    puts 'Okay, where can I find what you want to say? '
    # specify filename
    # if it doesn't exist, puts "I couldn't find that file"
    # puts "where can I find what you want to say?"
    # user puts valid filename
    # Loading <file>...
    #
  end
  if input == 'I have a lot to say'
    array = []
    puts 'Okay, what do you have to say? '
    while true
      input = gets.chomp
      array << input
      if input == 'done'
        array.pop
        length = array.length
        array2 = array.shift
        array3 = array.pop
        puts "You said #{array2}"
        array.each do |i|
          puts "Then you said #{i}"
        end
        puts "Finally you said #{array3}"
        puts "Phew, glad you got those #{length} things off your chest!"
        break
      end
    end
  else
    puts "You said: #{input}"
  end
end

playback('What do you want to say?: ')
