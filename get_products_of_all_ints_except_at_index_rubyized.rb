def get_products_of_all_ints_except_at_index(array)
  array.each_with_index do | element, index |
    nested_index = index + 1
    while nested_index < array.length - 1
      product = 1
      product *= array[index] unless nested_index == index
    end


  end

end

#_______________________ TEST CODE ____________________________________

array = [1,7,3,4]
p get_products_of_all_ints_except_at_index(array)

array = [0,0,0,0,0,0]
p get_products_of_all_ints_except_at_index(array)