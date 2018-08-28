class PigLatinizer

 attr_accessor :word


 def initialize
   @word = word
 end

 def find_vowel_index(word)
   vowels = "aeiouAEIOU".split("")
   vowel_index = word.split("").each_with_index{|ele, i|
     if vowels.include?(ele)
       return i
     end
     }
  end

 def piglatinize_rule(word)
    index = find_vowel_index(word)
    if index == 0
        return word + "way"
    else
        return word[index .. -1] + word[0..index-1] + "ay"
    end
  end

 def piglatinize(sentence)
   arr = sentence.split(" ")
   arr.map do |word|
     piglatinize_rule(word)
   end.join(" ")
 end


end #end class
