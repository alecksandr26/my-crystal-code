
# Template programming
class MyGenericClass(T)
  def initialize(@val : T)
  end

  def get_value : T
    @val
  end
end

C = MyGenericClass(Float64).new(4.0)
puts C.get_value


# More template ...


