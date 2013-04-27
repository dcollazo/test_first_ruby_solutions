module PigLatin
  VOWELS = "aeiou"
  CONSONANTS = "bcdfghjklmnpqrstvwxyz"
end

include PigLatin

def translate(string)
  returned_words = []
  
  string.split(' ').each do |word|
    
    while word[0].downcase =~ /[#{CONSONANTS}]/ || word[0..1].downcase =~ /[qu]/
      word = word.slice(1..word.size) + word[0]
    end
  
    word = word + "ay" if word[0].downcase =~ /[#{VOWELS}]/
    returned_words << word
  end
  returned_words.join(' ')
end

p translate('cherry')

