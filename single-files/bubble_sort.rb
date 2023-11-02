def bubble_sort!(arr)
  for i in 0...arr.length-1
    for j in 1...arr.length-i
      if arr[j-1]>arr[j]
        arr[j-1],arr[j] = arr[j],arr[j-1]
      end
    end
  end
  arr
end

p bubble_sort!([4,3,78,2,0,2])