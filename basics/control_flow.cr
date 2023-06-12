# crystal build control_flow.cr -o control_flow.out; ./control_flow.out
p! "Crystal is awesome".index("aw"),
   "Crystal is awesome".index("xxxx")

p! true, false
# "Crystal is awesome".index("aw")   # => 11
# "Crystal is awesome".index("xxxx") # => nil
# true  # => true
# false # => false

# Boolean algebra
a = true
b = false
p! a && b, # conjunction (AND)
   a || b,  # disjunction (OR)
   !a,      # negation (NOT)
   a != b,  # inequivalence (XOR)
   a == b   # equivalence

# a && b # => false
# a || b # => true
# !a     # => false
# a != b # => true
# a == b # => false


# The same thing but with variables
a = "foo"
b = nil
p! a && b,  # conjunction (AND)
   a || b,  # disjunction (OR)
   !a,      # negation (NOT)
   a != b,  # inequivalence (XOR)
   a == b   # equivalence

# a && b # => nil
# a || b # => "foo"
# !a     # => false
# a != b # => true
# a == b # => false


# Control flow

message = "Hello World"
if message.starts_with?("Hello")
  puts "Hello to you, too"
end
# Hello to you, too


# More complex
message = "Hi World"
if message.starts_with?("Hello") || message.starts_with?("Hi")
  puts "Hello to you, too"
end
# Hello to you, too


# More complex
if !(message.starts_with?("Hello") || message.starts_with?("Hi"))
  puts "Hello to you, too"
end
# Nothing



# unless == if !(...)
message = "OIII..  World"
unless message.starts_with?("Hello") || message.starts_with?("Hi")
  puts "I didn't understand that."
end
# I didn't understand that.


# Indexing
str = "Crystal is awesome"
index = str.index("is")
if !index.nil?
  puts str
  puts "#{" " * index}^^"
end

# Crystal is awesome
#         ^^

# More complex control flow
message = "Hello World"
if message.starts_with?("Hello") || message.starts_with?("Hi")
  puts "Hello to you, too!"
elsif message.starts_with?("Bye")
  puts "See you later"
else
  puts "I didn't understand that."
end

# Hello to you, too!











