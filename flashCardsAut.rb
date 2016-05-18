def flashCard(string, word_number)
  @phrase = string
  words_in_phrase = @phrase.split(" ")#Array
  @chosen_word = words_in_phrase[word_number - 1]
  # front_card =
  p "#{@phrase.gsub(@chosen_word, '[…]')} , #{@phrase.gsub(@chosen_word, @chosen_word.upcase)}"
end
flashCard("Who was that man you were talking to ?", 8)
