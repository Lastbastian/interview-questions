def get_products_of_all_ints_except_at_index(array)
  product = []
  starting_index = 0
  while starting_index < array.length
    result = 1
    for i in 0..array.length - 1
      result *= array[i] unless starting_index == i
    end
    product.push(result)
    starting_index += 1
  end
  return product
end


#_______________________ TEST CODE ____________________________________

array = [1,7,3,4]
p get_products_of_all_ints_except_at_index(array)

array = [0,0,0,0,0,0]
p get_products_of_all_ints_except_at_index(array)