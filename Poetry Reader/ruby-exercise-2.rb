snowy = File.read 'the-man-from-snowy-river.txt'

snowy_lines = snowy.lines

split_pattern = /[\W]+/
snowy_words = snowy.split split_pattern

#Example
puts "Here are the lines of Snowy that start with a vowel"

snowy_lines.each do |line|
  c = line[0].downcase
  puts '  ' + line if c == 'a' || c == 'e' || c == 'o' || c == 'u'
end

puts

#Exercises
puts "Here are the lines of Snowy that have an odd number of words"
snowy_lines.each do |line|
word_count = line.split.count
  puts ' ' + line if word_count % 2 == 1
end

puts

puts "Here is Snowy double-spaced"
snowy_lines.each do |line|
  puts line
  puts
end

puts

puts "Here are all the rhyming pairs from the ends of the Snowy lines"
i = 0
while i < snowy_lines.count
  last_word1 = snowy_lines[i].split(/\W/)
  last_word3 = snowy_lines[i+2].split(/\W/)

  last_word2 = snowy_lines[i+1].split(/\W/)
  last_word4 = snowy_lines[i+3].split(/\W/)

  last_word5 = snowy_lines[i+4].split(/\W/)
  last_word7 = snowy_lines[i+6].split(/\W/)

  last_word6 = snowy_lines[i+5].split(/\W/)
  last_word8 = snowy_lines[i+7].split(/\W/)
  puts last_word1.last + ", " + last_word3.last
  puts last_word2.last + ", " + last_word4.last
  puts last_word5.last + ", " + last_word7.last
  puts last_word6.last + ", " + last_word8.last

    i += 9 # This iterates to the next stanza, skipping the line break between stanzas
end
