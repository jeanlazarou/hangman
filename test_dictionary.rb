require_relative 'dictionary_loader'

words = load_dictionary('dictionary_fr.txt', 3)

puts "** 3 characters **"
puts words.length
puts words

words = load_dictionary('dictionary_fr.txt', 20)

puts "** 20 characters **"
puts words.length
puts words

words = load_dictionary('dictionary_fr.txt', 0)

puts "** no limit **"
puts words.length
puts words
