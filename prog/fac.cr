# Simple factorial with linear recursion program in crystal
# crystal build fac.cr -o fac.out && ./fac.out

def fac(n : Int32) : Int32
  return 1 if n == 0 || n == 1
  n * fac n - 1
end


while line = gets
  n = line.to_s.chomp
  puts "fac #{n} => #{fac n.to_i32}" if n != ""
end

# Ouput:
# fac 1 => 1
# fac 2 => 2
# fac 3 => 6
# fac 4 => 24
# fac 5 => 120
# fac 6 => 720
# fac 7 => 5040
# fac 8 => 40320
# fac 9 => 362880
# fac 10 => 3628800

