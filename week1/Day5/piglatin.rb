class PigLatin
  attr_accessor :word
  @@vowels = %w[a e i o u]
  @@consonants = %w[b c d f g h j k l m n p q r s t v w x y z]

  def initialize(word)
      @word = word.downcase
  end

  def convert
      length = @word.length
      if @@vowels.include?(@word[0])
          return (@word + "way")
      elsif
          @@consonants.include?(@word[0]) && @@consonants.include?(@word[1])
          return (@word[2..length] + @word[0..1] +  "ay")
      else
          return (@word[1..length] + @word[0] + "ay")

      end
    end
end

class Word < PigLatin
    def palindrome?
      length = @word.length
      word2 = ""
      while length > -1
        word2 << @word[length]
        length -= 1
      end
      word2.to_s!
      return true if word2.to_s == @word
    end
end


