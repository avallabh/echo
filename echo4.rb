def playback(input)
  puts input
  input = gets.chomp
  if input == 'Nothing!'
    puts 'Okay, fine!'
    exit
  end
  if input == 'I have something prepared'
    array = []
    while true
      puts 'Where can I find what you want to say? '
      input = gets.chomp
      if File.exists?(input) == false
        puts "I couldn't find that file."
      else
        puts "Loading #{input}..."
        File.open("#{input}", "r").each_line do |line|
          array << line
        end
        length = array.length
        array_first = array.shift
        array_last = array.pop
        puts "You said: #{array_first}"
        array.each do |i|
          puts "Then you said: #{i}"
        end
        puts "Finally you said: #{array_last}"
        puts "Phew, glad you got those #{length} things off your chest!"
        exit
      end
    end
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
        array_first = array.shift
        array_last = array.pop
        puts "You said: #{array_first}"
        array.each do |i|
          puts "Then you said: #{i}"
        end
        puts "Finally you said: #{array_last}"
        puts "Phew, glad you got those #{length} things off your chest!"
        exit
      end
    end
  else
    puts "You said: #{input}"
  end
end

playback('What do you want to say?: ')
