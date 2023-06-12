
# Now methos
# crystal build methods.cr -o methods.out; ./methods.out

def say_hello
  puts "Hello Penny!"
end

# Executing a method
say_hello
say_hello()

# Mehot with arguments
def say_hello(recipient)
  puts "Hello #{recipient}!"
end

say_hello "Erick"
say_hello("Erick")

# Default arguments
def say_hello(recipient = "World")
  puts "Hello #{recipient}!"
end

say_hello
say_hello("Erick")

# Now with type restriction
def say_hello(recipient : String = "World")
  puts "Hello #{recipient}!"
end

say_hello
say_hello("Erick")

# Overloading methods or generic methods

# This methods greets *recipient*.
def say_hello(recipient : String)
  puts "Hello #{recipient}!"
end

# This method greets *times* times.
def say_hello(times : Int32)
  puts "Hello " * times
end


say_hello
say_hello(5)

# Returning a value

def adds_2(n : Int32)
  n + 2
end

puts adds_2 40

# Explicit return value
# This method returns:
# - the same number if it's even,
# - the number multiplied by 2 if it's odd.
def build_even_number(n : Int32)
  return n if n.even?

  n * 2
end

puts build_even_number 7
puts build_even_number 28



# Return type of a function, error

def life_universe_and_everything : Int32
  "Fortytwo"
end

# Error: puts life_universe_and_everything + 1
# Error puts life_universe_and_everything


