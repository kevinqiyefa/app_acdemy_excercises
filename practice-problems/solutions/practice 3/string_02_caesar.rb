
=begin

Caesar cipher

    Implement a Caesar cipher. Example: caesar("hello", 3) # => "khoor"
        Assume the text is all lower case letters.
        You’ll probably want to map letters to numbers (so you can shift them). You can do this mapping yourself, but you may also want to use the ASCII codes, which are accessible through String#each_byte.
            You will probably also want to use String#ord and Fixnum#chr.
            Important point: ASCII codes are all consecutive!
            Lastly, be careful of the letters at the end of the alphabet, like "z"!


=end

def caesar(str, step)
   str.split("").map {|x|
    if x.ord+step > 122
      (x.ord+step-26).chr
    else
      (x.ord+step).chr
    end  
   }.join
  
end


puts caesar("hellaa", 3) == "khoodd"



