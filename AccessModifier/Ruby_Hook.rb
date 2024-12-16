#Include Example
module Greeting 
  
  def self.included(person)
    puts "include #{person}"
  end
end

class Person 
  #extend functionality of module
  include Greeting
end

Person.new