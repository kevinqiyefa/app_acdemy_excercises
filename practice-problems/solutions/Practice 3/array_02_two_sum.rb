#Two sum

#Write a method that finds if an array of numbers has a pair that sums to zero. Be careful of the case of zero; there need to be two zeroes in the array to make a pair that sums to zero.


def two_sum(arr)
  
  found = false
  arr.each do |e|
    found = true if arr.any?{|x| e+x == 0}
  end
  found
  
end

two_sum([1, 6, 3, -5, 2, -4, -1])