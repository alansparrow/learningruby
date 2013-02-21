# This section is documented and read by RDoc.
# Hello World!
#--
# This section is hidden from RDoc and could contain developer
# notes, private messages between developers, etc.
#++
# RDoc begins processing again here after the ++.
# This is a class that does nothing
class MyClass 
  # This method is documented (or is it?)
  def some_method
  end
  
  def secrect_method #:nodoc:
  end
  
  
  private
  # This method is private
  def private_method
  end
end
