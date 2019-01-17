def qsort(stack)

  less = []
  equal = []
  greater = []

  if stack.length < 1
    return []
  end

  pivot = stack.first
  #p pivot

  stack.each do |item|
    less << item if item < pivot
    equal << item if item == pivot
    greater << item if item > pivot
  end

  o = qsort(less) + equal + qsort(greater)
  return (qsort(less) + equal + qsort(greater))
end

a = [6,4,7,8,1,2,5,3,1,2,7,8,1]

p qsort(a)
