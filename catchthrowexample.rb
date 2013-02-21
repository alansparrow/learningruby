catch (:finish) do
  1000.times do
    x = rand(1000)
    if x == 123
      puts x
      throw :finish 
    end
  end
  
  puts "Generated 1000 random numbers without generating 123!"
end

puts "Out!"