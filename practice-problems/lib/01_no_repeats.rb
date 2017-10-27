# Write a function, `no_repeats(year_start, year_end)`, which takes a
# range of years and outputs those years which do not have any
# repeated digits.
#
# You should probably write a helper function, `no_repeat?(year)` which
# returns true/false if a single year doesn't have a repeat.
#
# Difficulty: 1/5

def no_repeats(year_start, year_end)
    
  range = year_end - year_start
  t = []
  if range == 0
     if year_start == year_start.to_s.split('').uniq.join().to_i
          return t << year_start
     else
          return t
     end
  else 
     i = 0
     c = year_start
     while i <= range
        c = year_start + i 
        if c == c.to_s.split('').uniq.join().to_i
           t << c
        end
        i += 1
     end
  end
  
  t
end

puts("\nTests for #no_repeats")
puts("===============================================")
    puts "no_repeats(1234, 1234) == [1234]: "  + (no_repeats(1234, 1234) == [1234]).to_s
    puts "no_repeats(1123, 1123) == []: "  + (no_repeats(1123, 1123) == []).to_s
    puts "no_repeats(1980, 1987) == [1980,1982,1983,1984,1985,1986,1987]: " + (no_repeats(1980, 1987) == [1980,1982,1983,1984,1985,1986,1987]).to_s
puts("===============================================")