# Write a method that takes in a number and returns a string, placing
# a single dash before and after each odd digit. There is one
# exception: don't start or end the string with a dash.
#
# You may wish to use the `%` modulo operation; you can see if a number
# is even if it has zero remainder when divided by two.
#
# Difficulty: medium.

def dasherize_number(num)
  t = num.to_s.split('')
  s = ""
  i = 0
  
  while i < t.length
    if t[i].to_i.even?
      s += t[i].to_s
    else
      if i == 0
        s += t[i].to_s
        s += "-"
      else
        if s.split('').last != '-'
          s += "-"
        end
        s += t[i].to_s
        if i != t.length-1
          s += "-"
        end  
        
      end  
        
    end  
    i += 1
  end
  s
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'dasherize_number(203) == "20-3": ' +
  (dasherize_number(203) == '20-3').to_s
)
puts(
  'dasherize_number(303) == "3-0-3": ' +
  (dasherize_number(303) == '3-0-3').to_s
)
puts(
  'dasherize_number(333) == "3-3-3": ' +
  (dasherize_number(333) == '3-3-3').to_s
)
puts(
  'dasherize_number(3223) == "3-22-3": ' +
  (dasherize_number(3223) == '3-22-3').to_s
)
