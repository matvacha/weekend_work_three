# Complete the method called sum_of_range, which will accept an array containing
# two numbers, and return the sum of all of the whole numbers within the range of those
# numbers, inclusive.

def sum_of_range(array)
  if array[1] - array[0] < 0
    range = (array[1]..array[0])
    range = range.to_a
    range.inject(0){|sum,x| sum + x }
  else
    range = (array[0]..array[1])
    range = range.to_a
    range.inject(0){|sum,x| sum + x }
  end
end

# Driver code - don't touch anything below this line.
puts "TESTING sum_of_range..."
puts

result = sum_of_range([1, 4])

puts "Your method returned:"
puts result
puts

if result == 10
  puts "PASS!"
else
  puts "F"
end

result = sum_of_range([4, 1])

puts "Your method returned:"
puts result
puts

if result == 10
  puts "PASS!"
else
  puts "F"
end