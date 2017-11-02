# Three Digit Format

# Define a method, #three_digit_format(n), that accepts an integer, n, as an
# argument. Assume that n < 1000. Your method should return a string version of
# n, but with leading zeros such that the string is always 3 characters long.

def three_digit_format(n)
  # your code here
  return "#{n}" if n>99
  return "0#{n}" if n<100 && n > 9
  return "00#{n}" if n < 10
end

puts "------Three Digit Format------"
puts three_digit_format(100) == "100"
puts three_digit_format(15) == "015"
puts three_digit_format(6) == "006"


#---------------------------------------------------



# Every Other Letter

# Define a method, #every_other_letter(string), that accepts a string as an argument.
# This method should return a new string that contains every other letter of the
# original string, starting with the first character.

def every_other_letter(string)
  # your code here
  a = string.split("")
  i = 0
  s = ""
  while i < a.size
    s += a[i]
    i += 2
  end
  s
end

puts "------Every Other Letter------"
puts every_other_letter("abcde") == "ace"
puts every_other_letter("i heart ruby") == "ihatrb"
puts every_other_letter("an apple a day...") == "a pl  a.."

