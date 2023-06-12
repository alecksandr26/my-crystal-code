# Fibonacci program with a tree recursion
def fib(n : Int32) : Int32
  return 1 if n <= 1
  fib(n - 1) + fib(n - 2)
end

while line = gets
  n = line.to_s.chomp
  puts "fib #{n} => #{fib n.to_i32}" if n != ""
end

