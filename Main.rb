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

#For loop to 100, to filter through data.
# Internal for loop for 10 items at a time
# Add and delete items
# Queue will delete one item from the end.
# Stack deletes one item from the head
# Sorted will delete item from the tail and insert by sorted
# Priority will delete priority at tail (1) and then insert with priority

list1 = Queue.new
puts "Time for Queue Operations "
playWithList(dataset1, list1)

list2 = Stack.new
puts "Time for Stack Operations "
playWithList(dataset2, list2)

#Sorted
list3 = BasicList.new
puts "Time for Sorted Operations "
playWithSorted(dataset3, list3)

#Priority
list4 = PriorityList.new
puts "Time for Priority Operations "
playWithPriority(dataset4, dataset5, list4)
