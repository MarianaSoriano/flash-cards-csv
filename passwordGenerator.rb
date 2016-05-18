# Generate aleatory passwords
upcaseLetters = ('a'..'z').to_a.shuffle[0..3].join
downcaseLetters = ('A'..'Z').to_a.shuffle[0..3].join
numbers = (0..9).to_a.shuffle[0..3].join
p password = (upcaseLetters + downcaseLetters + numbers).split('').shuffle.join
