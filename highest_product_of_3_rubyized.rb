# Given an array_of_ints, find the highest_product you can get from three of the integers.
# The input array_of_ints will always have at least three integers.
def product_of_three(array)
  sorted = array.sort.reverse.shift(3)
  sorted.reduce(1, :*)
end

#_____________________ TEST CODE ____________________________

 array_of_ints = [12,6,44,1,98,45,22,78,983,989]
 p product_of_three(array_of_ints)


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