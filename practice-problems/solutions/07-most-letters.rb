# Write a method that takes a string in and returns true if the letter
# "z" appears within three letters **after** an "a". You may assume
# that the string contains only lowercase letters.
#
# Difficulty: medium.

def nearby_az(string)
  if string.index('z') && string.index('a')
    (string.index('z') - string.index('a')) <= 3 && (string.index('z') - string.index('a')) > 0
  else
    return false
  end
  
  
  # Here's another solution
=begin  
  if string.index('a')
    x = string.index('a')
    while x < string.length
      if string[x+1] == "z"
        return true
      end
      x+=1
    end
  end
  
  return false
=end  
  
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts('nearby_az("baz") == true: ' + (nearby_az('baz') == true).to_s)
puts('nearby_az("abz") == true: ' + (nearby_az('abz') == true).to_s)
puts('nearby_az("abcz") == true: ' + (nearby_az('abcz') == true).to_s)
puts('nearby_az("a") == false: ' + (nearby_az('a') == false).to_s)
puts('nearby_az("z") == false: ' + (nearby_az('z') == false).to_s)
puts('nearby_az("za") == false: ' + (nearby_az('za') == false).to_s)
