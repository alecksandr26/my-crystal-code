
class Stack(T)
  private STACK_SIZE = 100              # This is a private constant
  @arr : Array(T)
  def initialize(amount : Int32 = STACK_SIZE) : self
    @arr = Array(T).new(initial_capacity: amount)
    return self
  end

  def push(val : T) : Nil
    @arr.push(val)
  end

  def pop : T
    if arr.size == 0
      raise "Empty Stack"
    end
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

class Queue(T) < Stack(T)
  def beg : T
    if @arr.size == 0
      raise "Empty Queue"
    end
    @arr[0]
  end

  # Over writting the method
  def pop : T
    if @arr.size == 0
      raise "Empty Queue"
    end
    val : T = @arr[0]
    
    @arr.delete_at(0)
    return val
  end
end

st = Stack(Int32).new()
qu = Queue(Int32).new()

qu.push(1)
qu.push(2)
qu.push(3)

puts qu.beg
qu.pop()
puts qu.beg

