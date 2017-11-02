
=begin
Hash offset

Martha has created a hash with letter symbols as keys to represent items that start with their keys. However, she realized everything is off by one letter.

wrong_hash = { :a => "banana", :b => "cabbage", :c => "dental_floss", :d => "eel_sushi" }

Write a program hash_correct that takes this wrong hash and returns the correct one.
Counting with hashes!

=end



wrong_hash = { :a => "banana", :b => "cabbage", 
	:c => "dental_floss", :d => "eel_sushi"}

hash = wrong_hash.invert
puts hash.each { |k,v| hash[k] = v.next}.invert