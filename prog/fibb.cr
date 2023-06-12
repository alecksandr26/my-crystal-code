
# Better version of the fibonaccie program with dynamic programming trick
def fibb(n : Int32) : Int32
  arr = Array(Int32).new(n)
  arr[0] = 1
  arr[1] = 1
  
  return arr[n] if n <= 1
  
  c = 2
  while c < n
    arr[n] = arr[n - 1] + arr[n - 2]
  end
  
  return arr[n]
end

while line = gets
  n = line.to_s.chomp
  puts "fibb #{n} => #{fibb n.to_i32}" if n != ""
end

