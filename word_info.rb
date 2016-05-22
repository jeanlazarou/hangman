# +letters+ should be part of the given +word+ and down-case
def word_info word, letters

  n = word.length
  underscores = "_ " * n

  letters.each do |letter|

    i = -1

    loop do

      i = word.index(letter, i + 1)

      break if i.nil?

      underscores[2 * i] = letter.upcase

    end

  end

  underscores

end

