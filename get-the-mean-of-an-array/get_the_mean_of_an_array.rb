def get_average(marks)
  marks.reduce(:+) / marks.size
end

# p get_average([2, 2, 2, 2])
# should return 2
