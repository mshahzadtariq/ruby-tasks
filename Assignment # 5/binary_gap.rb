class String
  def chomp_all(chr)
    str = self
    str = str.chomp(chr) while str.end_with?(chr)
    str
  end
end

def binary_gap(number)
  return "Value passed to method is invalid" if number < 0
  largest_gap = 0
  zeros_arr = number.to_s(2).chomp_all("0").split("1")
  zeros_arr.each { |zeros| largest_gap = zeros.length if largest_gap < zeros.length }
  largest_gap
end

puts binary_gap(20)
