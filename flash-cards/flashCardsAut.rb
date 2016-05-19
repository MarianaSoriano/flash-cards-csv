require 'csv'
csv = CSV.read('eng.csv', :headers=>true)
string = csv['string']
word_number = csv['word_number']

def flashCard(string, word_number)
  @phrase = string[0]
  words_in_phrase = @phrase.split(" ") #Array
  @chosen_word = words_in_phrase[word_number[0].to_i - 1]
  if @phrase[-1] == '?'
    @phrase.gsub!(' ?','?')
  end
  front_card = @phrase.gsub(@chosen_word, '[…]')
  back_card = @phrase.gsub(@chosen_word, @chosen_word.upcase)
  p "#{front_card} , #{back_card}"
end
flashCard(string, word_number)
# TODO: Iterate in phrases array
# TODO: Send modified phrases to a csv file
