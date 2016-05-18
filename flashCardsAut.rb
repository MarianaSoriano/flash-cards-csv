def flashCard(string, word_number)
  @phrase = string
  words_in_phrase = @phrase.split(" ") #Array
  @chosen_word = words_in_phrase[word_number - 1]
  if @phrase[-1] == '?'
    @phrase.gsub!(' ?','?')
  end
  front_card = @phrase.gsub(@chosen_word, '[…]')
  back_card = @phrase.gsub(@chosen_word, @chosen_word.upcase)
  p "#{front_card} , #{back_card}"
end
flashCard("Who was that man you were talking to ?", 8)
flashCard("Can you explain this word to me ?",6)
flashCard("Let me describe to you what I saw.", 4)
