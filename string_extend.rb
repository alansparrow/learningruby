class String
  def vowels
    scan(/[ueoai]/i)
  end
end

puts "This is a test".vowels
