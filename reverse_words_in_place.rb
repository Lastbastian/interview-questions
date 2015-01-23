#   message = 'find you will pain only go you recordings security the into if'

# reverse_words(message)
# returns: 'if into the security recordings you go only pain will you find'


def reverse_words(message)

  reverse_characters(message, 0, message.length)




def reverse_characters(message)

  # walk towards the middle, from both sides
# for i in 0..5
  for front_index in 0..(message.length / 2 - 1)

    # ruby lets us use negative indices, starting from the back at -1
    back_index = -front_index - 1

    # swap the front char and back char
    message[front_index], message[back_index] = \
    message[back_index], message[front_index]

    end

    return message.reverse
end