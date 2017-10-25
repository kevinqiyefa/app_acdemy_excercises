# Write a method that returns the `n`th prime number. Recall that only
# numbers greater than 1 can be prime.
#
# Difficulty: medium.

# You may use our `is_prime?` solution.
def is_prime?(number)
  
  if number <= 1
    return false 
  else
    i= 2
    while number > i
      return false if number % i == 0
      i += 1
    end
    return true
  end
end


def nth_prime(n)
    x = 2
    a = 0
    while true
      #check if it is prime or not.
      if is_prime?(x)
        a += 1
      end
      return x if a == n 
      x +=1
    end
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts('nth_prime(1) == 2: ' + (nth_prime(1) == 2).to_s)
puts('nth_prime(2) == 3: ' + (nth_prime(2) == 3).to_s)
puts('nth_prime(3) == 5: ' + (nth_prime(3) == 5).to_s)
puts('nth_prime(4) == 7: ' + (nth_prime(4) == 7).to_s)
puts('nth_prime(5) == 11: ' + (nth_prime(5) == 11).to_s)
