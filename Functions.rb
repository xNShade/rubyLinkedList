def createRandomArray
  newarray = Array.new(100){ rand(100) }
  return newarray
end

#Initialize
def playWithList(dataset, list)
  start = Time.now
  #This will init the 10 items in the list.
  for i in 0..10
    #Just a fake register in
    datain = dataset[i]
    list.append(datain)
  end
  #Delete 1 item and then add 1 item
  for i in 10..99
    dataout = list.pop
    #Faking register again
    datain = dataset[i]
    list.append(datain)
  end
  #Delete the remaining 10
  for i in 0..10
    #Fake register out
    dataout = list.pop
  end
  finish = Time.now
  puts totalTime(start, finish)
end

def playWithSorted(dataset, list)
  start = Time.now
  for i in 0..10
    datain = dataset[i]
    list.addsorted(datain)
  end
  #Delete 1 item and then add 1 item
  for i in 10..99
    dataout = list.pop
    datain = dataset[i]
    list.addsorted(datain)
  end
  #Delete the remaining 10
  for i in 0..10
    dataout = list.pop
  end
  finish = Time.now
  puts totalTime(start, finish)
end

def playWithPriority(dataset1, dataset2, list)
  start = Time.now
  for i in 0..9
    datain = dataset1[i]
    prioin = dataset2[i]
    list.priority(datain, prioin)
  end
  #Delete 1 item and then add 1 item
  for i in 10..99
    dataout = list.pop
    datain = dataset1[i]
    prioin = dataset2[i]
    list.priority(datain, prioin)
  end
  #Delete the remaining 10
  for i in 0..9
    dataout = list.pop
  end
  finish = Time.now
  puts totalTime(start, finish)
end

def totalTime(start, finish)
  return finish - start
end
