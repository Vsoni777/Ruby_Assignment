def stock_picker(arr)
  return[] if arr.length<2
    min_profit=arr[0]
    best_buy_price=0
    best_sell_price=0
    max_profit=0
    min_index=0
    
    arr.each_with_index do |price,index|
      profit=price-min_profit

      if price>max_profit

        max_profit=profit
        best_buy_price=min_index
        best_sell_price=index
      end
      if price< min_profit
        min_profit=price
        min_index=index
      end
    end
    puts [best_buy_price,best_sell_price]
end




 stock_picker([7,1,5,3,6,4])
# [1,4]  # for a profit of $15 - $3 == $12
puts "running"
