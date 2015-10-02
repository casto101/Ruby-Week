#The exercise is to make the last exercise answer clearer, shorter and simpler using methods
def to_words s
  s.split /[\W]+/
end

def starts_with_vowel s
  #FIXME Errors on an empty string
  #w{a e i o u} is a quick way of writing ['a', 'e', 'i', 'o', 'u']
  %w{a e i o u}.include? s[0].downcase #Can you see why we use downcase here?
end

snowy = File.read 'the-man-from-snowy-river.txt'

snowy_lines = snowy.lines
snowy_words = to_words snowy

#Example
puts "Here are the lines of Snowy that start with a vowel"

snowy_lines.each do |line|
  puts line if starts_with_vowel line
end

puts
puts "Here are the lines of Snowy that have an odd number of words"
def word_count x
  variable= x.split.count
  variable %2 == 1
end
snowy_lines.each do |line|
  puts line if word_count line
end
#hint: a % b is the remainder after you divide a by b (called "mod" or "modulus")
# for example 17 % 2 == 1
puts "..."

puts
puts "Here are all the rhyming pairs from the ends of the Snowy lines"
i = 0

while i < snowy_lines.count
  last_word1 = to_words snowy_lines[i]
  last_word3 = to_words snowy_lines[i+2]

  last_word2 = to_words snowy_lines[i+1]
  last_word4 = to_words snowy_lines[i+3]

  last_word5 = to_words snowy_lines[i+4]
  last_word7 = to_words snowy_lines[i+6]

  last_word6 = to_words snowy_lines[i+5]
  last_word8 = to_words snowy_lines[i+7]
  puts last_word1.last + " " + last_word3.last
  puts last_word2.last + " " + last_word4.last
  puts last_word5.last + " " + last_word7.last
  puts last_word6.last + " " + last_word8.last
  i += 9 # This is a short way of writing i = i + 1
end
