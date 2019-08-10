def for_each_element(array)
  i = 0
  while i < array.length
    yield(array[i])
    i += 1
  end
end

###############################################################################

a = [10, 20, 30]
for_each_element(a) {|element| puts("The element is #{element}")}

###############################################################################

def merge(array1, array2)
  merged = []

  iterator1 = ArrayIterator.new(array1)
  iterator2 = ArrayIterator.new(array2)

  while(iterator1.has_next? and iterator2.has_next?)
    if iterator1.item < iterator2.item
      merged << iterator1.next_item
    else
      merged << iterator2.next_item
    end
  end

  # take rest from array1

  while(iterator1.has_next?)
    merged << iterator1.next_item
  end

  # take rest from array2

  while(iterator2.has_next?)
    merged << iterator2.next_item
  end
end

###############################################################################

class ChangeResistantArrayIterator
  def change_resistant_for_each_element(array)
    copy = Array.new(array)
    i = 0
    while i < copy.length
      yield(copy[i])
      i += 1
    end
  end
end
