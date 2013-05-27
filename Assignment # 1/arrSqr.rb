class Array
  def eachSquare
      self.each do |s|
        yield (s*s)
      end
  end
  def eachOdd
    self.each do |s|
      yield (s) if s.odd?
    end
  end
  def eachEven
    self.each do |s|
      yield (s) if s.even?
    end
  end
end

[1,2,3,4,5,6,7].eachSquare do |element|
  puts element
end
puts
[1,2,3,4,5,6,7].eachOdd do |element|
  puts element
end
puts
[1,2,3,4,5,6,7].eachEven do |element|
  puts element
end