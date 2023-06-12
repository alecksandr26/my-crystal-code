# Loops for control flow
# crystal build loops.cr -o loops.out; ./loops.out

counter = 0
while counter < 10
  counter += 1
  puts "Counter: #{counter}"
end

# until == while !(...)
counter = 0
until counter >= 10
  counter += 1
  puts "Counter: #{counter}"
end


# Skipping and Breaking
counter = 0
while counter < 10
  p! counter,  counter.even?
  if counter.even?
    break
  end
  counter += 1
  puts "Counter: #{counter}"

end
puts "done"

counter = 0
while counter < 10
  p! counter.even?
  if counter.even? && counter < 10
    counter += 5
    next
  end
  counter += 1
  puts "Counter: #{counter}"
end
puts "done"








