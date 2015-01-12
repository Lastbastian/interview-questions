def reverse_words(message)
    for starting_index in 0..(message.length / 2 - 1)
      ending_index = -starting_index - 1
      message[starting_index], message[ending_index] = message[ending_index], message[starting_index]
    end
  return message
end

def

message = "hi there world"

p reverse_words(message)