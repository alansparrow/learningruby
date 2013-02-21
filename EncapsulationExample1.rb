class Person
  def initialize(name)
    set_name(name)
  end
  
  def name
    @first_name + ' ' + @last_name
  end
     
  def set_name(name)
    first_name, last_name = name.split(/\s+/)
    set_first_name(first_name)
    set_last_name(last_name)
  end
     
  def set_first_name(name)
    @first_name = name
  end
  
  def set_last_name(name)
    @last_name = name
  end
  
  private :set_last_name
  public :set_last_name
end

p = Person.new("Fred Bloggs")
p.set_last_name("Smith")
puts p.name
