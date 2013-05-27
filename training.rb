
def threeTimes # to illumstrate simple yield functionality
	yield
	yield
	yield
end

#threeTimes { puts "hello "}

def fib(max) # demonstrate yield with the help of fibonacci series example
	first,second = 1, 1
	while(first <= max)
		yield first
		first,second = second , first + second
	end
end

#fib(1000) {|f| print f," "}

def varargs(*args)
	puts args.class
	puts args.length
	puts args.join(",")
end

#varargs("a","b","c","d","e")

val = 89
unless val > 100
	puts val
else
	puts "in else"
end

a=0
a = a + 7 while a<100
puts a

xyz = 2
case xyz
	when 1 
		puts "one"
	when 2
		puts "two"
	when 3
		puts "three"
	when 4
		puts "four"
	else
		puts "Any other number"
end

a=0
while a<100
	a = a + 7 
end
puts a

a=0
until a>100
	a = a + 7 
end
puts a


