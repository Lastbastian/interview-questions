# Using the Ruby language, have the function WordCount(str) take the str string parameter being passed and return the number of words the string contains (ie. "Never eat shredded wheat" would return 4). Words will be separated by single spaces.

def prime(num)
  for i in (2..num-1)
    return false if num % i != 0
  end
end

p prime(67)