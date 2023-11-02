def stock_picker(arr)

  minCost = arr[0]
  minDay = 0
  
  maxDay = 0
  maxSale = 0

  days = [0,0]

  arr.each_with_index do |cost,day|

      if (cost < minCost) 
        minDay = day
        minCost = cost
        next
      end



      if (cost - minCost > maxSale)
        maxDay =  day
        maxSale = cost - minCost 
        days = [minDay,maxDay]
      end

  end

  days
  
end

p stock_picker([17, 3, 6, 9, 15, 8, 5, 1, 10])