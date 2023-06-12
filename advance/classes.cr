
class Person
  @name : String
  @age : Int32
  
  def initialize(name : String)
    @name = name
    @age = 0
  end
  
  def name : String
    @name
  end

  def age : Int32
    @age
  end
end

jhon = Person.new "Jhon"
peter = Person.new "Peter"

puts jhon.name
puts jhon.age
puts peter.name
puts peter.age

# Add new mehtods here
class Person
  def become_older(years : Int32 = 1) : Int32
    @age += years
  end
end

puts jhon.become_older 10


# For example operator overloading

class Vector2D
  getter x, y
  
  def initialize(@x : Float64, @y : Float64)
  end

  def +(other : self) : self
    Vector2D.new(x + other.x, y + other.y)
  end

  def to_s : String
    "Vector2D(@x = #{x}, @y = #{y})"
  end

  def norm : Float64
    Math.sqrt(x ** 2 + y ** 2)
  end

  def dis(other : self) : Float64
    Math.sqrt((x - other.x) ** 2 + (y - other.y) ** 2)
  end
end


v1 = Vector2D.new(5.1, 2.5)
v2 = Vector2D.new(5.56, 3.155)

puts (v1 + v2).to_s

puts (v1 + v2).norm
puts (v1 + v2).dis other: v2

