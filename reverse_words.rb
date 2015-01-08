#   message = 'find you will pain only go you recordings security the into if'

# reverse_words(message)
# # returns: 'if into the security recordings you go only pain will you find'

def reverse_words(string)
  string_split = string.split
  word_count = string_split.length-1
  reversed_string = []
  string_split.each do | word |
    reversed_string << string_split[word_count]
    word_count -= 1
  end
  reversed_string.join(' ')
end


# Driver Code

string = "find you will pain only go you recordings security the into if"

p reverse_words(string)