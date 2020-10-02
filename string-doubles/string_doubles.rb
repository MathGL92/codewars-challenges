def doubles(string)
  result_array = []
  string.chars.each do |char|
    if !result_array.empty? && result_array[-1] == char
      result_array.pop
    else
      result_array.push(char)
    end
  end
  result_array.join('')
end

### other solution###
# def doubles(string)
#   while string.gsub!(/(.)\1/, ''); end
#   string
# end
#####################

p doubles('abbbzz')
# return 'ab'

p doubles('zzzzykkkd')
# return 'ykd'

