def position(letter)
  letter.upcase.ord - 'A'.ord + 1
end

def wordValue(arr)
  # initialize empty array of integer
  arr_integer = []
  # for each element of arr
  arr.each do |word|
    # find the matching number of letters
    matching_char = word.chars.map { |char| position(char) }
    # add them together & push them in array of integer
    arr_integer << matching_char.reduce(:+)
  end
  # mutliply the element by index
  arr_integer.map.with_index { |num, i| num * (i+1) }
end

p wordValue(["codewars","abc","xyz"]);
# should return [88,12,225]
