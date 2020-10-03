def generate_range(min, max, step)
  # input of 3 integers
  # with range generate an array from min to max with step
  (min..max).step(step).to_a
end

p generate_range(1,10,1)
# [1,2,3,4,5,6,7,8,9,10]

p generate_range(1,10,2)
# [1,3,5,7,9]
