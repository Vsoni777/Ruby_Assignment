
class Car
   attr_accessor :name,:model
  def initialize(name,model)
    @name=name
    @model=model
  end

  def +(obj)
    puts "#{self.name}#{obj.name}"
  end
end

a=Car.new("Audi","Q3")
b=Car.new("Valvo","2023")

puts (a+b)