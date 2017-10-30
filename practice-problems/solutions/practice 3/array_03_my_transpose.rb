
=begin
My Transpose

To represent a matrix, or two-dimensional grid of numbers, we can write an array containing arrays which represent rows:

rows = [
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8]
  ]

row1 = rows[0]
row2 = rows[1]
row3 = rows[2]

We could equivalently have stored the matrix as an array of columns:

cols = [
    [0, 3, 6],
    [1, 4, 7],
    [2, 5, 8]
  ]

Write a method, my_transpose, which will convert between the row-oriented and column-oriented representations.

=end

def my_transpose(arr)
  
  t = []
  i = 0
  while i < arr.length
    
      t[i] = []
      j = 0
    while j < arr.length
 
       t[i] << arr[j][i]
       j += 1
    end

    i += 1
    
  end
  
  print t 
  
end


rows = [
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8]
  ]

my_transpose(rows)