def sorting(arr)
  n=arr.length
  (0...n).each do |i|
    (i+1...n).each do |j|
      if arr[i]>arr[j]
        temp=arr[i]
        arr[i]=arr[j]
        arr[j]=temp
      end
    end
  end
  puts arr
end




# Example usage
arr = [64, 34, 25, 12, 22, 11, 90]
puts "Sorted array: #{sorting(arr).inspect}"



def sortiing(arr)
  n=arr.length
 (0...(n-1)).each do |i|
       arr[(0...(n-i-1))].each_with_index do |val,j|
       if val>arr[j+1]
         arr[j],arr[j+1]=arr[j+1],arr[j]
       end
     end
  end
  print arr
end