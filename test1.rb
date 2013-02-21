my_array = %w{this is a test of the longest word check}
longest_word = ''
my_array.each do |word|
  #longest_word = word if longest_word.length < word.length
  if (longest_word.length < word.length)
    longest_word = word
  end
end

puts longest_word

my_array =  %w{10 56 92 3 49 588 18}
highest_number = 0
my_array.each do |number|
  number = number.to_i
  highest_number = number if number > highest_number
end

puts highest_number
