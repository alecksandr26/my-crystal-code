# This is how we can get inputs from the user
# crystal build gets.cr -o gets.out; ./gets.out

name = gets
p! typeof(name)                 # typeof(name) # => (String | Nil)
puts "Hello, #{name}!"

# Gets from stdin input
name = STDIN.gets
puts "Hello, #{name}!"

# To force to be a number
num = (STDIN.gets).to_s.to_i

p! typeof(num)
