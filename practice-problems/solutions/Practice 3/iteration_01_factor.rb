
=begin

Print out all the factors for each of the numbers 1 through 100.

=end

def factors(start, ended)
   (start..ended).each{|x| puts "#{x}: #{(1..x).select{|y| x % y == 0 }}"}
  
end


factors(1, 100)



