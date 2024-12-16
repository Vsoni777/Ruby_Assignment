require_relative '../area'

class Circle 
  include Area
  def findArea(radius)
    puts Area::PI*radius*radius
  end
end

Circle.new.findArea(4)