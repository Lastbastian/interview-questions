# Using the Ruby language, have the function ArithGeo(arr) take the array of numbers stored in arr and return the string "Arithmetic" if the sequence follows an arithmetic pattern or return "Geometric" if it follows a geometric pattern. If the sequence doesn't follow either pattern return -1. An arithmetic sequence is one where the difference between each of the numbers is consistent, where as in a geometric sequence, each term after the first is multiplied by some constant or common ratio. Arithmetic example: [2, 4, 6, 8] and Geometric example: [2, 6, 18, 54]. Negative numbers may be entered as parameters, 0 will not be entered, and no array will contain all the same elements.

def geometric(arr)
  i = arr.length-1
  geometric_results = []
  geometric_test = false
  while i > 0
    geometric_results << arr[i] / arr[i-1]
    i -= 1
  end
  geometric_results.each do |e|
    geometric_results[i] == geometric_results[i+1] ? geometric_test = true : geometric_test = false
  end
  return geometric_test

end

def arithmetic(arr)
  i = arr.length-1
  arithmetic_results = []
  arithmetic_test = false
  while i > 0
    arithmetic_results << arr[i] - arr[i-1]
    i -= 1
  end
  arithmetic_results.each_index do |e|
    arithmetic_results[i] == arithmetic_results[i+1] ? arithmetic_test = true : arithmetic_test = false
  end
  return arithmetic_test
end

def arith_geo(arr)
  if arithmetic(arr) == true
    return "Arithmetic"
  elsif geometric(arr) == true
    return "Geometric"
  else
    return -1
  end
end

p arith_geo([5,10,15,20,25,30,35])
p arith_geo([2,6,18,54])
p arith_geo([1,8,66,77])