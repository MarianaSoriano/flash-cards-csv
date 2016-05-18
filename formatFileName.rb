#Capitalize each word in a phrase, remove white spaces and return the new string
# TODO: Detect '_' underscores and convert them into white spaces, then, follow the program flow
p "Write your file name, please"
string = gets.chomp
def capitalize(string)
  words = string.split(' ') #Returns an array with each word in the string
  words.each do |word|
    print "#{word.chr.upcase}#{word[1..-1].downcase}"
  end
end
capitalize(string)
