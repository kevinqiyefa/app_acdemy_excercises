
=begin

Write a method substrings that will take a String and return an array containing each of its substrings. 
Example output: substrings("cat") => ["c", "ca", "cat", "a", "at", "t"]

=end

def substrings(str)

  substring = []
  str.size.times { |start|
    (start..str.size-1).each {|ended|
       substring << str[start..ended]
    }
    
  }

print substring

=begin 
  i = 1
  while i <= str.length
    (0..str.length-1).each{|x| 
    puts str.slice(x, i) if x+i <= str.length}
    i += 1
  end
  
=end  
end

substrings("cat")


