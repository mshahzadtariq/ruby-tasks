def compute(number)
  b_number = number.to_s(2)
  rev_number = b_number.reverse.to_i(2)
  return rev_number * number
end

def binary_symmetric_root(number)
  return "Value passed to method is invalid" if number < 0
  0.upto(number).each do |num|
     return num if compute(num) == number
  end
  return -1
end

puts binary_symmetric_root(3245)
