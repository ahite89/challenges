def translate(sentence)
  words = sentence.split
  vowels = ["a","e","i","o","u"]
  words.each do |word|
    if vowels.include?(word[0])
      puts word + "way"
    elsif !vowels.include?(word[0]) && vowels.include?(word[1])
      puts word[1..-1] + word[0] + "ay"
    elsif !vowels.include?(word[0]) && !vowels.include?(word[1]) && vowels.include?(word[2])
      puts word[2..-1] + word[0] + word[1] + "ay"
    elsif !vowels.include?(word[0]) && !vowels.include?(word[1]) && !vowels.include?(word[2])
      puts word[3..-1] + word[0] + word[1] + word[2] + "ay"
    end
  end
  words.join(" ")
end

sentence = ARGV.join(" ")
puts translate(sentence)
