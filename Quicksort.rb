
class Quick 
  attr_accessor :arr
  #initialize and class method
  def initialize
    @arr=to_getArray
  end


  #Method use for take value
  def to_getArray
    puts 'Enter lenght of Array'
    n=gets.chomp.to_i
    arr=Array.new(n)
    count=0
    puts 'enter value'
    n.times do |item|
      item=gets.chomp
      begin
        item=Integer(item)
        arr[count]=item
        count+=1
      rescue StandardError
        puts 'Invalid'
        redo
      end
      
    end
    print arr
    arr
    
  end



  #method did quick sort using recursion
  def quicksort(arr,low,high)
    #unnessary code
    #base condition
    if low<high
      part = partition(arr,low,high)
      quicksort(arr,low,part-1)
      quicksort(arr,part+1,high)
    end
    return arr
  end

  #display element of array
  def display
    puts 'Original array:'
    print @arr
    puts
    n = @arr.length - 1
    sorted_arr = quicksort(@arr, 0, n)
    puts "Sorted array:"
    print sorted_arr
    puts
  end


  #Divide array and conquer
  def partition(arr,low,high)
    pivot=arr[high]
    i=low
    j=low
    while j<high.to_i
      if arr[j].to_i<=pivot.to_i
        arr[i],arr[j]=arr[j],arr[i]
        i+=1
      end
      j+=1
    end
    arr[i],arr[high]=arr[high],arr[i]
    return i
  end
end


quick=Quick.new
quick.display