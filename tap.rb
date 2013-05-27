x = [1,2,3,4,5,6,7,8,9,10]
y = x.tap do |o|
	o*2
puts 'o'
puts o
end

z = x* 2

puts 'x'
puts x 
puts 'y'
puts y
puts 'z'
puts z
