def playback(input)

  puts input
  input = gets.chomp
  if input == 'Nothing!'
    puts 'Okay, fine!'
    exit
  end
  if input == 'I have a lot to say'
    array = []
    puts "Okay, what do you have to say? "
    while true
      input = gets.chomp
      array << input
      if input == "done"
        exit
        # giant ass loop
        array.pop
        length = array.length
        array2 = array.shift
        array3 = array.pop
        puts "First you said #{array2}"
        array.each do |i|
          puts "Then you said #{i}"
        end
        puts "Finally you said #{array3}"
        puts "Phew, glad you got all #{length} of those things off your chest!"
        break
      end
    end
  else
    puts "You said: #{input}"
  end
end


playback("What do you want to say?: ")
