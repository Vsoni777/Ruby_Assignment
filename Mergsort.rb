class Marge
  
  attr_accessor :arr
  #initialize and call method to store value
  def initialize
    @arr=to_getArray
  end

    #Method use for take value
    def to_getArray
      puts 'Enter lenght of Array'
      n=gets.chomp.to_i
      @arr=Array.new(n)
      count=0
      puts 'enter value'
      n.times do |item|
        item=gets.chomp
        begin
          item=Integer(item)
          @arr[count]=item
          count+=1
        rescue StandardError
          puts 'Invalid input and loop start current index'
          redo
        end
        
      end
      @arr
      
    end

    #mergesorting value
    def do_partition(arr,low,high)
      if low<high
        mid=low+(high-low)/2
        do_partition(arr,low,mid)
        do_partition(arr,mid+1,high)
        merge(arr,low,mid,high)
      end
      arr
    end

    #merge Array in single Array
    def merge(arr,low,mid,high)
      n1=mid-low+1
      n2=high-mid
      left=Array.new(n1)
      right=Array.new(n2)
      #left array
      n1.times do |i|
        left[i]=arr[low+i]
      end
      #right array
      n2.times do |j|
        right[j]=arr[mid+1+j]
      end
      
      l,r,k=0,0,low
      #Swap value on left to right side in base of and base logical operator
      while l<n1 && r<n2
         if left[l]<=right[r]
           arr[k]=left[l]
           l+=1
         else
          arr[k]=right[r]
          r+=1
         end
         k+=1
      end
      #if value is exist in left side then work
      while l<n1
        arr[k]=left[l]
        k+=1
        l+=1
      end
       #if value is exist in right side then work
      while r<n2
        arr[k]=right[r]
        k+=1
        r+=1
      end
  
    end

    #display element of array
    def display
      puts
      puts 'Original array:'
      print @arr.inspect
      puts
      n = @arr.length - 1
      #Divide and Conqure start in this point
      sorted_arr = do_partition(@arr, 0, n)
      puts "Sorted array:"
      print sorted_arr
    end

end
    
#object creation
m=Marge.new
#display method call and sorted Array got.
m.display