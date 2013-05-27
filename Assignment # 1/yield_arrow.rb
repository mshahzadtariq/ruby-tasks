star = Proc.new do |sp,st|
  sp.times { print " " }
  st.times { print "*" }
end

def half_arrow(max,direction)
  0.upto(max) do |i|
    yield(i,direction,max)
    puts
  end
end

while true
  puts "Direction of arrow? "
  direction = gets.chomp()
  half_arrow(10,direction) do |i,direction,max|
    case direction
      when "right"
        0.upto(max/2) {|j| print "*" if (i>j and i<max/2) or (i>=max/2 and i-(max/2)<j) }
      when "left"
        sp,st = ((max/2)-i),i if i < max/2
        sp,st = (i-max/2),(max-i) if i >= max/2
        star.call sp,st
      when "up"
        star.call max-i,(i*2)-1
      when "down"
        star.call i,((max-i)*2)-1
    end
  end
end


