# To compile:
# crystal build variables.cr -o variables.out

message = "This is a message"

# This is a comment
puts message

# To use special format
p! message                      # output: message # => "This is a message"


# prints the type of the variable
puts typeof(message)

# "P!" To use some format
p! typeof(message)              # output: typeof(message) # => String
p! sizeof(typeof(message))      # sizeof(typeof(message)) # => 8, What 8 bytes ?, I think it is a pointer

# Integers
message = 73
p! typeof(message)              # output: typeof(message) # => Int32
p! sizeof(typeof(message))      # sizeof(typeof(message)) # => 4, okay...

# Float values
pi = 3.14159265359
p! pi
p! typeof(pi)                   # typeof(pi) # => Float64

pi = 3.1415
p! pi
p! typeof(pi)                   # typeof(pi) # => Float64
p! sizeof(typeof(pi))           # sizeof(typeof(pi)) # => 8, okay..

# Characters
char = 'E'
p! char
p! typeof(char)
p! sizeof(typeof(char))         # sizeof(typeof(char)) # => 4, what 4 bytes for a character ????

# Boolean values
bool = 1 == 1
p! bool
p! typeof(bool)

# It is simmalr to C, 
p! sizeof(typeof(bool))         # sizeof(typeof(bool)) # => 1

