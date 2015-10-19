poem = File.read('the-man-from-snowy-river.txt')
lines = poem.lines

#/\W+/ is a "regular expression" - a text-searching pattern.
# /\s+/ The slashes start and end the pattern. \W means "any non-alphabetic character"
# and + means "repeated one or more times"
words = poem.split /\W+/


#Examples
puts "There are #{words.count} words"
puts "There are #{words.uniq.count} different words" #uniq removes duplicates

puts " "

#Exercises
first_line = lines[0].split
puts "The second through sixth words are #{first_line[1..5]}"
puts "The first line has #{first_line.count} words in it"

puts " "

first_stanza_lines = lines[0..8]
first_stanza = first_stanza_lines.join.split /\W+/
puts "The first stanza has #{first_stanza.count} words in it"

puts " "

puts "Here is the poem with its lines randomly rearranged ..."
puts lines.sample(117)
