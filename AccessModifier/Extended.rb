module Animal 
  def self.Extented(target)
    puts "#{target} is a #{self}"
  end
  def speak
    puts "speak sound"
  end
end

class Dog
  extend Animal
end

#without creating ruby
Dog.speak