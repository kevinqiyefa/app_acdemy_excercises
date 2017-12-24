# You have 100 cats.
#
# Your rules are simple: whenever you visit a cat, you toggle it's hat status (if it
# already has a hat, you remove it.. if it does not have a hat, you put one on).
# All of the cats start hat-less. You cycle through 100 rounds of visiting cats.
# In the 1st round, you visit every cat. In the second round, you visit every other cat.
# In the nth round, you visit every nth cat.. until the 100th round, in which you only
# visit the 100th cat.
#
# At the end of 100 rounds, which cats have hats?

def cats_in_hats
  # your code here
  h = {}
  100.times do |x|
        h[x+1] = false    
  end

   
  (1..100).each{|round_num|
      (round_num..100).each{|cat_num| 
        if cat_num % round_num == 0 
          h[cat_num] = !h[cat_num] 
        end
      }
  }
  h.select{|x,y| y != false}.keys

end

puts "------Cats in Hats------"
puts cats_in_hats == [1, 4, 9, 16, 25, 36, 49, 64, 81, 100]


# Even Splitters
# ------------------------------------------------------------------------------
# Return an array of characters on which we can split an input string to produce
# substrings of the same length.

# Don't count empty strings after the split.

# Here's an example for "banana":
#
# "banana".split("a") # => ["b", "n", "n"] (all elements same length)
# "banana".split("b") # => ["", anana"] (all elements same length - there's only
# one element "anana" because the empty string doesn't count)
# "banana".split("n") # => ["ba", "a", "a"] (all elements NOT same length)
#
# result: ["b", "a"]
#
# ------------------------------------------------------------------------------

def even_splitters(string)
  #
  # your code goes here
  #

  splitters = string.split("").uniq
  
  splitters.select{|s|
    check_element_length(string.split(s))
  }
  
end


def check_element_length(arr)
  t = arr.reject{|x| x == ""}
  t.all?{|y| y.length==t[0].length}
 
end


puts "-----Even Splitters----"
puts even_splitters("") == []
puts even_splitters("t") == ["t"]
puts even_splitters("jk") == ["j", "k"]
puts even_splitters("xoxo") == ["x", "o"]
puts even_splitters("banana") == ["b","a"]
puts even_splitters("mishmash") == ["m","h"]
