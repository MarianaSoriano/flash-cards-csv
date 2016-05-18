# I can't stand arrogant people!
print "What's the phrase you want to study?\n"
@phrase = gets.chomp
words_in_phrase = @phrase.split(" ")#Array
number_of_words_in_phrase = words_in_phrase.length
print "This phrase have #{number_of_words_in_phrase} words.\n"
print "Wich one do you want to hide?\nWrite their number. (The first word is number 1 and so on)\n"
number_of_chosen_word = gets.chomp
@chosen_word = words_in_phrase[number_of_chosen_word.to_i - 1]
print "Do you mean '#{@chosen_word}'? y/n "
user_answer = gets.chomp

def hide_chosen_word
  if @phrase.include?(@chosen_word)
    p @phrase
  else
    p ":("
  end
end

if user_answer == "y"
  p "Continue"
  hide_chosen_word
elsif user_answer == "n"
  p "Return"
else
  p "Please, write 'y' (yes) to confirm or 'n' (not) to cancel"
end
