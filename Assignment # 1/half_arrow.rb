
def half_arrow(max,direction)
	
	case direction
		when "right"	
			0.upto(max) do |i|
				
				0.upto(max/2) do |j|
					print "*" if (i>j and i<max/2) or (i>=max/2 and i-(max/2)<j)
			
				end
				puts
			end
		when "left"	
			half_max = max/2
			0.upto(max) do |i|
				if i<half_max
					(half_max-i).times do 
						print " "	
					end
					i.times do 
						print "*"
					end
				else
					
					(i-half_max).times do 
						print " "	
					end
					(max-i).times do 
						print "*"
					end
				end
				puts	

			end

		when "up" 

			0.upto(max) do |i|
				#if i<max
					(max-i).times do 
						print " "	
					end
					((i*2)-1).times do 
						print "*"
					end
				#else

				#end
				puts
			end

		when "down"
			0.upto(max) do |i|
				#if i<max
					(i).times do 
						print " "
					end
					(((max-i)*2)-1).times do 
						print "*"	
					end
					
				#else

				#end
				puts
			end
	end

end
while true
puts "Size of box ? "
size = gets

puts "Direction ? "
direction = gets.chomp
half_arrow(size.to_i,direction)
end
