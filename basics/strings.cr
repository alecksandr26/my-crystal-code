# crystal build strings.cr -o strings.out; ./strings.out 
name = "Erick"
puts "Hello #{name}"
# Hello Erick

name = 6
puts "Hello #{name}!"
# Hello 6!

puts "I say: \"Hello \\\n\tWorld!\""
# I say: "Hello \
# 	  World!"

# You can use % to delcare and create strings
puts %(I say: "Hello World!")
str  = %(I say: "Hello World!")
puts str

# I say: "Hello World!"
# I say: "Hello World!"

# some string methods
message = "Hello World! Greetings from Crystal."
puts "normal: #{message}"
puts "upcased: #{message.upcase}"
puts "downcased: #{message.downcase}"
puts "camelcased: #{message.camelcase}"
puts "capitalized: #{message.capitalize}"
puts "reversed: #{message.reverse}"
puts "titleized: #{message.titleize}"
puts "underscored: #{message.underscore}"


# Get information
message = "Hello World! Greetings from Crystal."
p! message.size

empty_string = ""
p! empty_string.size == 0, empty_string.empty?

blank_string = ""
p! blank_string.blank?, blank_string.presence

message = "Hello World!"
p! message == "Hello World", message == "Hello Crystal", message == "hello world",
   message.compare("hello world", case_insensitive: false),
   message.compare("hello world", case_insensitive: true)

# message.size # => 36
# empty_string.size == 0 # => true
# empty_string.empty?    # => true
# blank_string.blank?   # => true
# blank_string.presence # => nil
# message == "Hello World"                                # => false
# message == "Hello Crystal"                              # => false
# message == "hello world"                                # => false
# message.compare("hello world", case_insensitive: false) # => -1
# message.compare("hello world", case_insensitive: true)  # => 1

# More methods
message = "Hello World!"
p! message.includes?("Crystal"), message.includes?("World")

message = "Hello World!"
p! message.starts_with?("Hello"), message.starts_with?("Bye"),
   message.ends_with?("!"), message.ends_with?("?")

p! "Crystal is awesome".index("Crystal"), "Crystal is awesome".index("s"), "Crystal is awesome".index("aw")

message = "Crystal is awesome"
p! message.index("s"), message.index("s", offset: 4), message.index("s", offset: 10)

# message.includes?("Crystal") # => false
# message.includes?("World")   # => true
# message.starts_with?("Hello") # => true
# message.starts_with?("Bye")   # => false
# message.ends_with?("!")       # => true
# message.ends_with?("?")       # => false
# "Crystal is awesome".index("Crystal") # => 0
# "Crystal is awesome".index("s")       # => 3
# "Crystal is awesome".index("aw")      # => 11
# message.index("s")             # => 3
# message.index("s", offset: 4)  # => 9
# message.index("s", offset: 10) # => 14


a = "Crystal is awesome".index("aw")
p! a, typeof(a)
b = "Crystal is awesome".index("meh")
p! b, typeof(b)

# a         # => 11
# typeof(a) # => (Int32 | Nil)
# b         # => nil
# typeof(b) # => (Int32 | Nil)

# Sub strings baby
message = "Hello World!"
p! message[6, 5]
# message[6, 5] # => "World"

message = "Hello World!"
p! message[6..(message.size - 2)],
   message[6..-2]

# message[6..(message.size - 2)] # => "World"
# message[6..-2]                 # => "World"

# Substitution
message = "Hello World!"
p! message.sub(6..-2, "Crystal")
message = "Hello World!"
p! message.sub("World", "Crystal")

# message.sub(6..-2, "Crystal") # => "Hello Crystal!"
# message.sub("World", "Crystal") # => "Hello Crystal!"

# gsub, do the samething but with all the instances
message = "Hello World! How are you, World?"
p! message.sub("World", "Crystal"),
   message.gsub("World", "Crystal")

# message.sub("World", "Crystal")  # => "Hello Crystal! How are you, World?"
# message.gsub("World", "Crystal") # => "Hello Crystal! How are you, Crystal?"



