# Using the Ruby language, have the function Palindrome(str) take the str parameter being passed and return the string true if the parameter is a palindrome, (the string is the same forward as it is backward) otherwise return the string false. For example: "racecar" is also "racecar" backwards. Punctuation and numbers will not be part of the string.

def palindrome(str)

  array = str.split
  array.delete(" ")
  new_string = array.join
  new_string == new_string.reverse ? result = true : result = false

end

p palindrome("never odd or even")
p palindrome("eye")
p palindrome("cookies")