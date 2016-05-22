require_relative "word_info"
require_relative "gallows"
require_relative "dictionary_loader"

if ARGV.empty?
  words = load_dictionary('dictionary_en.txt', 3)
else
  words = load_dictionary(ARGV.first, 3)
end

hidden_word = words.sample

found_letters = []
wrong_letters = []

errors_counter = 0

loop do

  draw_gallows errors_counter

  if errors_counter > 6
    puts "You lost the game, BANANE!!! The word was #{hidden_word}"
    break
  end

  info = word_info(hidden_word, found_letters)

  puts info
  puts

  unless info.include?('_')
    puts "You win, PATATE!"
    break
  end

  print "Wrong letters: "
  puts wrong_letters.sort.uniq.join(" ")
  puts

  print "Give me a letter: "

  answer = $stdin.gets
  answer = answer.chomp.downcase

  if answer == 'stop'
    exit
  end

  if answer.length > 1
    puts "You must give only one letter!"
  elsif answer.empty?
  elsif hidden_word.include?(answer)
    puts "The letter is part of the hidden word"

    if found_letters.include?(answer)
    else
      found_letters << answer
    end

  else
    puts "Invalid letter"
    wrong_letters << answer.upcase
    errors_counter = errors_counter + 1
  end

end
