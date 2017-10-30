#Remove dups

#Array has a uniq method that removes duplicates from an array. It returns the unique elements in the order in which they first appeared:

#[1, 2, 1, 3, 3].uniq # => [1, 2, 3]

#Write your own uniq method, called my_uniq; it should take in an Array and return a new array. It should not call uniq.

#One special feature of Ruby classes is that they are open; we can add new methods to existing classes. Here, add your my_uniq method to Array:


  def my_uniq(arr)
    t = []  
    arr.each{|e| t << e if !t.include?(e)}
    t
  end



print my_uniq([1, 2, 1, 4, 1, 3, 3])
