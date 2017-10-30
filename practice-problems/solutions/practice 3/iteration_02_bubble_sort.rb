
=begin

Implement Bubble sort in a method #bubble_sort that takes an Array and modifies it so that it is in sorted order. 

=end

def bubblesort(arr)
    sorted = false
  while !sorted
    sorted = true
    i = 0
    while i < arr.length-1
        if arr[i] > arr[i+1]
            arr[i], arr[i+1] = arr[i+1], arr[i]
            sorted = false
        end
        i += 1
    end
  
  end
  print arr
end


bubblesort([5,1,8,4,3,9,2,6,0,7])



