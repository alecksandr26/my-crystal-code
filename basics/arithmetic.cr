# To compile
# crystal build arithmetic.cr -o arithmetic.out

# Boolean operands
p! 1 == 1, 1 == 2, 1.0 == 1, -2000.0 == -2000

# Ouput:
# 1 == 1           # => true
# 1 == 2           # => false
# 1.0 == 1         # => true
# -2000.0 == -2000 # => true

puts "More boolean operands"
p! 2 > 1, 1 >= 1, 1 < 2, 1 <= 2

# Output:
# 2 > 1  # => true
# 1 >= 1 # => true
# 1 < 2  # => true
# 1 <= 2 # => true

puts "Arithmetic operations"
p! 1 + 1, # addition
   1 - 1,  # subtraction
   2 * 3,  # multiplication
   2 ** 4, # exponentiation
   2 / 3,  # division
   2 // 3, # floor division
   3 % 2,  # modulus
   -1      # negation (unary)

# Output:
# 1 + 1  # => 2
# 1 - 1  # => 0
# 2 * 3  # => 6
# 2 ** 4 # => 16
# 2 / 3  # => 0.6666666666666666
# 2 // 3 # => 0
# 3 % 2  # => 1
# -1     # => -1

puts "More arithmetic"
p! 4 + 5 * 2, (4 + 5) * 2

# Output:
# 4 + (5 * 2) # => 14
# (4 + 5) * 2 # => 18

puts "Number methods"
p! -5.abs,   # absolute value
   4.3.round, # round to nearest integer
   5.even?,   # odd/even check
   10.gcd(16) # greatest common divisor

# Output:
# -5.abs     # => 5
# 4.3.round  # => 4.0
# 5.even?    # => false
# 10.gcd(16) # => 2

puts "Math methods"

p! Math.cos(1),      # cosine
   Math.sin(1),      # sine
   Math.tan(1),      # tangent
   Math.log(42),     # natural logarithm
   Math.log10(312),  # logarithm to base 10
   Math.log(312, 5), # logarithm to base 5
   Math.sqrt(9)      # square root

# Output:
# Math.cos(1)      # => 0.5403023058681398
# Math.sin(1)      # => 0.8414709848078965
# Math.tan(1)      # => 1.5574077246549023
# Math.log(42)     # => 3.7376696182833684
# Math.log10(312)  # => 2.494154594018443
# Math.log(312, 5) # => 3.568328509873247
# Math.sqrt(9)     # => 3.0

puts "Math constants"
p! Math::E,   # Euler's number
   Math::TAU, # Full circle constant (2 * PI)
   Math::PI   # Archimedes' constant (TAU / 2)

# Output:
# Math::E   # => 2.718281828459045
# Math::TAU # => 6.283185307179586
# Math::PI  # => 3.141592653589793


