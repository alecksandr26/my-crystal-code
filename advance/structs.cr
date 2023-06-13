
# So structs are useful to create contex of data
# They can't have private or public attributes they
# only have properties

struct Point
  property x : Float64, y : Float64
  
  def initialize(@x : Float64, @y : Float64)
  end

  def dis : Float64
    Math.sqrt(x ** 2 + y ** 2)
  end

  def to_s : String
    "Point.new(@x = #{x}, @y = #{y})"
  end

  def +(other : Point) : self
    Point.new(x + other.x, y + other.y)
  end
end

p1 = Point.new(5.3, 2.1)
p2 = Point.new(3.3, 5.1)
puts p1.to_s
puts (p1 + p2).to_s


struct Stack(T)
  property head : Int32
  property arr : Array(T)
  
  def initialize(amount : Int32 = 100) : self
    @head = 0
    @arr = [] of T
    return self
  end

  def pop : T
    if head == 0
      raise "Empty Stack"
    end
    @head -= 1
    val : T = arr[head]
    arr.pop()
    return val
  end

  def push(val : T)
    if head + 1 == arr.size
      raise "Full Stack"
    end
    arr.push(val)
    @head += 1
  end

  def size : Int32
     head
  end

  def top : T
    arr[head - 1]
  end
end

st = Stack(Int32).new()
st.push(2)
st.push(10)
st.push(5)

puts "Top: #{st.top}\t size: #{st.size}"
st.pop
puts "Top: #{st.top}\t size: #{st.size}"
st.pop
puts "Top: #{st.top}\t size: #{st.size}"

# But it is not private
puts "head: #{st.head}"
puts "arr: #{st.arr}"


