def test
  yield
end

test { puts "Hello World!" } #test is method, { puts "Hello World" } is a code block

def test(&code_block)
    code_block.call
end

test { puts "Call from test method!" }  #test is method, { puts "Call from test method" } is method's parameter

def test 
end


def each_vowel(&code_block) #only accept 1 code block as parameter
  puts "abc"
  code_block.call
  code_block.test_here(1,2,3)
end

each_vowel do
  puts "inside code block!"
  
  public
  def test_here(a,b,c)
    puts "inside test_here!"
  end
end
