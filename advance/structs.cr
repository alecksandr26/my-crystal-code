
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



