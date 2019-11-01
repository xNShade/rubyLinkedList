#Creating the node to use in the Stack and Queue
class Node
  attr_accessor :next
  attr_reader :data

  def initialize(number)
    @data = number
    @next = nil
  end

  #Overwriting to_s to print actual values rather than mem address
  def to_s
    "#{@data}"
  end

#end class
end

class PriorityNode
  attr_accessor :prev
  attr_accessor :next
  attr_reader :data
  attr_reader :prio

  def initialize(number,priority)
    @data = number
    @prio = priority
  end

  def to_s
    "#{@data}, #{@prio} "
  end
end
