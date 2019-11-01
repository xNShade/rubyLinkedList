def createRandomArray
  newarray = Array.new(100){ rand(100) }
  return newarray
end

#Initialize
def playWithList(dataset, list)
  start = Time.now
  for i in 0..10
    list.append(dataset[i])
  end
  #Delete 1 item and then add 1 item
  for i in 10..99
    list.pop
    list.append(dataset[i])
  end
  #Delete the remaining 10
  for i in 0..10
    list.pop
  end
  finish = Time.now
  puts totalTime(start, finish)
end

def playWithSorted(dataset, list)
  start = Time.now
  for i in 0..10
    list.addsorted(dataset[i])
  end
  #Delete 1 item and then add 1 item
  for i in 10..99
    list.pop
    list.addsorted(dataset[i])
  end
  #Delete the remaining 10
  for i in 0..10
    list.pop
  end
  finish = Time.now
  puts totalTime(start, finish)
end

def playWithPriority(dataset1, dataset2, list)
  start = Time.now
  for i in 0..9
    list.priority(dataset1[i], dataset2[i])
  end
  puts " After INIT "
  list.printit
  #Delete 1 item and then add 1 item
  for i in 10..99
    list.pop
    list.priority(dataset1[i], dataset2[i])
    puts "Loop"
    list.printit
  end
  #Delete the remaining 10
  for i in 0..9
    list.pop
  end
  finish = Time.now
  puts totalTime(start, finish)
end

def totalTime(start, finish)
  return finish - start
end
