def get_products_of_all_ints_except_at_index(array)
  products = []
  array.each_index do |index|
    products.push(array[index-1] * array[index-2] * array[index-3])
  end
  return products
end


#_______________________ TEST CODE ____________________________________

array = [1,7,3,4]
p get_products_of_all_ints_except_at_index(array)
