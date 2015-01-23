# Using the Ruby language, have the function PrimeTime(num) take the num parameter being passed and return the string true if the parameter is a prime number, otherwise return the string false. The range will be between 1 and 2^16.

def prime_time(num)
  prime = true
  for i in (2..num-1)
    prime = false if num % i == 0
  end
  return prime
end

p prime_time(97)
p prime_time(38047)
p prime_time(60497)