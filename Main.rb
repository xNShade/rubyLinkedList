#create (4) data sets of 100 random integers each with values of 0 to 99.
#create (1) data set of 100 random integers values of 1 to 3.
#create them each run.

#Create a way to introduce 10 of the array elements at a time
#introduce the 10 elements

require_relative 'LinkedList'
require_relative 'Queues'
require_relative 'Functions'

dataset1 = createRandomArray
dataset2 = createRandomArray
dataset3 = createRandomArray
dataset4 = createRandomArray
dataset5 = Array.new(100){ rand(3) + 1 }

list1 = Queue.new
dataset1.each { |i|
  list1.append(i)
}
list2 = Stack.new
dataset2.each { |i|
  list2.append(i)
}
list3 = BasicList.new
dataset3.each { |i|
  list3.addsorted(i)
}
#change to priority
list4 = PriorityList.new
for i in 0..99
  list4.priority(dataset4[i],dataset5[i])
end


puts "Queue "
list1.printit
list1.printtotext
print "\n\n"
puts "Stack "
list2.printit
list2.printtotext
print "\n\n"
puts "Sorted "
list3.printit
list3.printtotext
print "\n\n"
puts "Priority Queue"
list4.printit
list4.printtotext
