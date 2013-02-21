require_relative 'TDDexample'
require 'test/unit'

class TestTitleize < Test::Unit::TestCase
  def test_basic1
    assert_equal("This Is A Test", "this is a test".titleize)
    assert_equal("Another Test 1234", "another test 1234".titleize)
    assert_equal("We're Testing", "We're testing".titleize)
  end
  
  def test_basic2
    #assert(1 == 2)
    #assert_raise(RuntimeError) { 2 / 0 }
    #assert_nothing_raised(ZeroDivisionError) { 2 / 0 }
    #assert_equal("INVALID TEST", "sdasd".titleize)
    #assert_instance_of(String, 1)
    flunk("Swim or die!")
  end
end
