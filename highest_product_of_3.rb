# Given an array_of_ints, find the highest_product you can get from three of the integers.
# The input array_of_ints will always have at least three integers.
def three_highest_ints(array)
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

def product_of_three(array)
  if array.length > 3
    array.shift(3)
  end
  result = array[0] * array[1] * array[2]
end


#_____________________ TEST CODE ____________________________

 array_of_ints = [12,6,44,1,98,45,22,78,983,989]
 p product_of_three(three_highest_ints(array_of_ints))


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