def load_dictionary file, minimum_length

  words = []

  open(file, 'r:utf-8').each do |line|

    line = line.chomp.downcase

    if line.length >= minimum_length
      line = line.tr('àéêèëùûîïç', 'aeeeeuuiic')
      words << line
    end

  end

  words

end
