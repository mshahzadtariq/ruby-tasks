class Fixnum
  def heavy?
    (self.to_s.split(//).map(&:to_i).inject(&:+).to_f / self.to_s.size) > 7
  end
end

def heavy_decimal_count(a,b)
  return "Values passed to method are invalid" if a<0 or b<0 or b<a
  count = 0
  a.upto b do|num|
    count=count+1 if num.heavy?
  end
  count
end


puts heavy_decimal_count(8675,8689)
