 class Sum 
   attr_accessor :arr

   def initialize
     @arr=set_value
   end

   def set_value
    return arr=[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
   end

   def find_sum
     return 0 if arr.empty?
    sum=arr.pop
    return sum+find_sum
   end
 end


 call=Sum.new
puts (call.find_sum)
 