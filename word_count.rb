# Using the Ruby language, have the function WordCount(str) take the str string parameter being passed and return the number of words the string contains (ie. "Never eat shredded wheat" would return 4). Words will be separated by single spaces.

def word_count(str)
  str_array = str.split("")
  space_count = 0
  str_array.each do |element|
    space_count += 1 if element == " "
  end
  return space_count + 1
end

p word_count("lane borrowed")