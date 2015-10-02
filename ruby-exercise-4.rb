#The exercise is to make the last exercise answer clearer, shorter and simpler using methods
def last_word line
  line.split(/[\W]+/).last
end


snowy = File.read 'the-man-from-snowy-river.txt'

snowy_lines = snowy.gsub(/\n\n/, "\n").lines

puts "Here are all the rhyming pairs from the ends of the Snowy lines"

#rewrite this to use map and each rather than while
#note: you will find each_slice useful
word_array = snowy_lines.map{|line| last_word line}

snowy_lines.each_slice(4) do |a|
  word_array = a.map{|b| last_word b}
  puts "#{word_array[0]}, #{word_array[2]}"
  puts "#{word_array[1]}, #{word_array[3]}"
end

=begin
while i < snowy_lines.count
  [0, 1, 4, 5].each do |n|
    first_word = each_slice[i + n]
    second_word = each_slice[i + n + 2]
    puts "#{first_word}, #{second_word}"
  end
  i += 9 # This is a short way of writing i = i + 1
end
=end
