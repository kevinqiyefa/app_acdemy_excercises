# Vowel Censor
# ----------------------------------------
# Write a method, #vowel_censor that takes in a string and replaces
# any vowels in it with an "X". Do not modify the original string.

def vowel_censor(string)
  
  string.gsub(/[aeiou]/, "X")
 
=begin  
  v = ["a", "e", "i", "o", "u" ]
  s = ""
  string.split(" ").each{|x|
   x.split("").each{|y|
       y = "X" if v.include?(y)
       s+=y
    }
    s += " " 
  }
  s.split(" ").join(" ")
=end 
end

puts "---------Vowel Censor----------"
puts vowel_censor("Let's order a pizza") == "LXt's XrdXr X pXzzX"
puts vowel_censor("Nitwit, blubber, oddment, tweak") == "NXtwXt, blXbbXr, XddmXnt, twXXk"
puts vowel_censor("Supercalifragilisticexpialidocious") == "SXpXrcXlXfrXgXlXstXcXxpXXlXdXcXXXs"



# ----------------- Switch Roles!



# Print 10
# ----------------------------------------
# Write a method, #array_print_10, that puts the numbers 0 - 9 using an array
# and the each method

def array_print_10
  a = [0,1,2,3,4,5,6,7,8,9]
  a.each{|x| print x }
  puts
end

array_print_10

# Write a method, #range_print_10, that prints the numbers 0 - 9 using a range
# and the each method

def range_print_10
  (0..9).each{|x| print x}
  puts
end

range_print_10

# Write a method, #integer_print_10, that prints the numbers 0 - 9 using an integer
# and the times method

def integer_print_10
  10.times{|x| print x}
end
integer_print_10


# ----------------- Read the solutions!