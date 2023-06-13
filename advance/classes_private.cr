

class Stack(T)
  @arr : Array(T)
  STACK_SIZE = 100              # This constant will be share in memory among the classes
  
  def initialize(amount : Int32 = STACK_SIZE) : self
    @arr = Array(T).new(initial_capacity: amount)
    return self
  end

  def push(val : T) : Nil
    arr.push(val)
  end

  def pop : T
    val : T = arr.top()
    arr.pop()
    return val
  end
  
  def top : T
    arr.top()
  end

  def size : Int32
    return add.size
  end
end


st = Stack(Int32).new()




