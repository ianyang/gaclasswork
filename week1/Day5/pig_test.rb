require ('./PigLatin')


puts ("Enter a word")
input = gets.chomp


pword = Word.new(input)
p pword.palindrome?