
def sort(num)
  num_array = num.to_s.split('')
  done = false
  len = num_array.length
  while !done do
    num_array.each_with_index do |n, i|
      if (num_array[i+1]) and (num_array[i] > num_array[i+1])
        low = num_array[i]
        high = num_array[i+1]
        num_array[i] = high
        num_array[i+1] = low
        done = false
        break
      end
      done = true
    end
    p num_array
    sleep(0.5)
  end
end
num = 394621743189
sort(num)
