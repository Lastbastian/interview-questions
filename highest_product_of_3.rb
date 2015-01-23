# Given an array_of_ints, find the highest_product you can get from three of the integers.
# The input array_of_ints will always have at least three integers.

def sorted_array(array)
  for index in 0..array.length-1
    nested_index = index + 1
    for nested_index in 0..array.length-1
      if array[index] > array[nested_index]
        array[index], array[nested_index] = array[nested_index], array[index]
      end
    end
  end
  return array
end

def high_total(array)
  array[1] * array[2]
end

def low_total(array)
   array[-1] * array[-2]
end

def highest_product(array)
  sorted_array = sorted_array(array)
  high_total = high_total(sorted_array)
  low_total = low_total(sorted_array)
  if high_total > low_total
    for i in 0..array.length-1
      high_so_far = 1
      product = high_total * array[i]
      high_so_far = product unless product < high_so_far
    end
  else
    for i in 0..array.length-1
      high_so_far = 1
      product = high_total * array[i]
      high_so_far = product unless product < high_so_far
    end
  end
  return high_so_far
end

#_____________________ TEST CODE ____________________________

 array_of_ints = [12,6,44,1,98,45,22,78,983,989]
 p highest_product(array_of_ints)

 array_of_ints = [-10,-10,1,3,2]
 p highest_product(array_of_ints)



# While loop

# def highest_product(array)
#   index = 0
#   while index < array.length
#     nested_index = index + 1
#     while nested_index < array.length
#       if array[index] < array[nested_index]
#         array[index], array[nested_index] = array[nested_index], array[index]
#       end
#       nested_index += 1
#     end
#     index += 1
#   end
#   return array
# end