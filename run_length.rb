# Using the Ruby language, have the function ArithGeo(arr) take the array of numbers stored in arr and return the string "Arithmetic" if the sequence follows an arithmetic pattern or return "Geometric" if it follows a geometric pattern. If the sequence doesn't follow either pattern return -1. An arithmetic sequence is one where the difference between each of the numbers is consistent, where as in a geometric sequence, each term after the first is multiplied by some constant or common ratio. Arithmetic example: [2, 4, 6, 8] and Geometric example: [2, 6, 18, 54]. Negative numbers may be entered as parameters, 0 will not be entered, and no array will contain all the same elements.

def run_length(str)
  array = str.split('')
  rep_str = ""
  rep_counter = 1
  array.each_index do |i|
    if array[i] == array[i+1]
      rep_counter += 1
    else
      rep_str << rep_counter.to_s << array[i]
      rep_counter = 1
    end
  end
  return rep_str
end

p run_length("aaaaaabbcdeaabzaaaa")
