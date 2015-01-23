# Using the Ruby language, have the function ABCheck(str) take the str parameter being passed and return the string true if the characters a and b are separated by exactly 3 places anywhere in the string at least once (ie. "lane borrowed" would result in true because there is exactly three characters between a and b). Otherwise return the string false.

def word_count(str)

( str =~ /a...b/ || /b...a/ ) ? (return true) : (return false)

end

p ABCheck("lane borrowed")
p ABCheck("after badly")
p ABCheck("Laura sobs")
