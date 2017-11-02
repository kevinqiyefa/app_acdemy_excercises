# Reverse Digits

# Define a method, #reverse_digits(int), that reverses the digits of its argument
# and returns the resulting number.
def reverse_digits(int)
  string_num = int.to_s
  string_num.reverse! #mutative
  string_num.to_i
end

# ------------------------------------------------------------------------------

# Thirds Product

# Define a method, #thirds_product(array), that accepts an array of integers as an
# argument. Your method should return the product of every third element multiplied
# together. It should return 1 if there is no third element.

# ex: thirds_product([0, 1, 2, 3, 4, 5, 6, 7, 8]) ==> 2 * 5 * 8 == 80

def thirds_product(array)
  product = 1
  idx = 2 #third element

  while idx < array.length
    product *= array[idx]
    idx += 3
  end

  product
end

# ------------------------------------------------------------------------------

# How Many Likes?

# Define a method, #how_many_likes?(sentence) that accepts a string as an argument.
# Your method should cound the number of times the sentence uses the word "like".

def how_many_likes?(sentence)
  words = sentence.split
  likes_count = 0

  words.each do |word|
    likes_count += 1 if word == "like"
  end

  likes_count
end

# ------------------------------------------------------------------------------

# Pair Product?

# Define a boolean method, #pair_product?, that accepts two arguments: an array of integers
# and a target_product (an integer). The method returns a boolean indicating whether
# any pair of elements in the array multiplied together equals that product. You
# cannot multiply an element by itself. An element on its own is not a product.

def pair_product?(arr, target_product)
  arr.each_with_index do |el1, idx1|
    arr.each_with_index do |el2, idx2|
      next if idx1 == idx2
      return true if el1 * el2 == target_product
    end
  end

  false
end