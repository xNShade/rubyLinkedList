#TODO sorted
class Queue
  def initialize
    #Creating a sentinel head
    @head = Node.new(nil)
  end

  def append(number)
    current = @head
    prev = current
    newnode = Node.new(number)
    while(current = current.next)
      prev = current
    end
    prev.next = newnode
  end

  #Pop
  def pop
    @head = @head.next
  end

  #Peek
  def peek
    puts @head.next
  end

  #Print - Doesn't print sentinel
  def printit
    node = @head
    counter = 0
    while(node = node.next)
      if counter == 10
        print "\n"
        counter = 0
      end
      printf "%-4s", node
      counter = counter + 1
    end
  end

  def printtotext
    fout = File.open('output.txt', 'a')
    node = @head
    counter = 0
    while(node = node.next)
      if counter == 10
        fout.print "\n"
        counter = 0
      end
      fout.printf "%-4s", node
      counter = counter + 1
    end
    fout.print "\n\n"
    fout.close
  end

#FIFO Class end
end

class Stack
  #Creates a sentinel head
  def initialize
    @head = Node.new(nil)
  end

  def append(number)
    newnode = Node.new(number)
    newnode.next = @head.next
    @head.next = newnode
  end

  #Pop
  def pop
    @head = @head.next
  end

  #Delete - Garbage collector should deallocate memory.
  def deletelist
    if @head == nil
      puts "List deleted"
    end

    tmp = @head
    while(@head != nil)
      tmp = tmp.next
      @head.next = nil
      @head = tmp
    end
  end

  #Peek
  def peek
    puts @head.next
  end

  #Print - Doesn't print sentinel
  def printit
    node = @head
    counter = 0
    while(node = node.next)
      if counter == 10
        print "\n"
        counter = 0
      end
      printf "%-4s", node
      counter = counter + 1
    end
  end

  def printtotext
    fout = File.open('output.txt', 'a')
    node = @head
    counter = 0
    while(node = node.next)
      if counter == 10
        fout.print "\n"
        counter = 0
      end
      fout.printf "%-4s", node
      counter = counter + 1
    end
    fout.print "\n\n"
    fout.close
  end

#LIFO class end
end

class BasicList
  def initialize
    #Creating a sentinel head
    @head = Node.new(nil)
  end

  #Create a sorted linked list sorted from high to low
  def priority(number)
    current = @head
    while (current.next != nil and current.next.data >= number)
      current = current.next
    end
    newnode = Node.new(number)
    newnode.next = current.next
    current.next = newnode
  end

  #Create a sorted linked list from low to high
  def addsorted(number)
    current = @head
    while (current.next != nil and current.next.data <= number)
      current = current.next
    end
    newnode = Node.new(number)
    newnode.next = current.next
    current.next = newnode
  end

  #Print - Doesn't print sentinel
  def printit
    node = @head
    counter = 0
    while(node = node.next)
      if counter == 10
        print "\n"
        counter = 0
      end
      printf "%-4s", node
      counter = counter + 1
    end
  end

  def printtotext
    fout = File.open('output.txt', 'a')
    node = @head
    counter = 0
    while(node = node.next)
      if counter == 10
        fout.print "\n"
        counter = 0
      end
      fout.printf "%-4s", node
      counter = counter + 1
    end
    fout.print "\n\n"
    fout.close
  end

end

class PriorityList
  def initialize
    #Creating a sentinel head
    @head = PriorityNode.new(nil, nil)
  end

  #Create a sorted linked list sorted from high to low
  def priority(number,prio)
    current = @head
    while (current.next != nil and current.next.prio >= prio)
      current = current.next
    end
    newnode = PriorityNode.new(number,prio)
    newnode.next = current.next
    current.next = newnode
  end

  #Print - Doesn't print sentinel
  def printit
    node = @head
    counter = 0
    while(node = node.next)
      if counter == 10
        print "\n"
        counter = 0
      end
      printf "%-4s", node
      counter = counter + 1
    end
  end

  def printtotext
    fout = File.open('output.txt', 'a')
    node = @head
    counter = 0
    while(node = node.next)
      if counter == 10
        fout.print "\n"
        counter = 0
      end
      fout.printf "%-4s", node
      counter = counter + 1
    end
    fout.print "\n\n"
    fout.close
  end

end
