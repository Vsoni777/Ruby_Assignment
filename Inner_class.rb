class Parent
   def initialize
        puts "it's Parent class init method"
   end  
    #inner class
    #By defalut public
   class Child1
     def greeting_msg
       puts "in child greeding method"
     end
   end 
   def caller
     Child1.new.greeting_msg
   end
   private_constant :Child1
end

#to call innerclass
#Parent::Child1.new.greeting_msg
#To call private _constant
#to call it's method
Parent.new.caller