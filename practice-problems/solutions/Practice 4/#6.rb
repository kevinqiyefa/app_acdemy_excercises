# Wild Sum

# Define a method, #wild_sum(n) that sums all the numbers less than n that are:
#   - Divisible by 2 or divisible by 3
#   - Not divisible by both 2 and 3

# ex: wild_sum(16) ==> 2 + 3 + 4 + 8 + 9 + 10 + 14 + 15 ==> 65

def wild_sum(n)
  # your code here
  a = [0]
  0.upto(n-1){|x|
    a << x if (x % 2 == 0 || x % 3 == 0) && !(x % 2 == 0 && x % 3 == 0)
  }
  a.inject(:+)
end

puts "------Wild Sum------"
puts wild_sum(0) == 0
puts wild_sum(2) == 0
puts wild_sum(3) == 2
puts wild_sum(7) == 9
puts wild_sum(16) == 65
