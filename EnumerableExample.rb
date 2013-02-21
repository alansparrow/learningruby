print [1,2,3,4].collect { |i| i.to_s + 'x'}

puts

print [1,2,3,4].detect { |i| i.between?(2,3)}

puts

print [1,2,3,4].select { |i| i.between?(2,3)}

puts

print [4,1,3,2].sort

puts

puts [1,4,3,2].max

puts [1,4,3,2].min

class AllVowels
  include Enumerable
  
  @@vowels = %w{u e o a i}
  def each
    @@vowels.each do |v|
      puts "inside!"
      yield v
    end
  end
end

x = AllVowels.new
x.each do |v|
  puts "outside!"
  puts v
end

print x.collect { |i| i + "x"}

puts

print x.detect { |i| i > "j" }

puts

print x.select { |i| i > "j" }

puts

print x.sort

puts

puts x.max

puts x.min

