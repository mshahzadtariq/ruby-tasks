class Foo
	attr_accessor :name	
	def initialize(name)
		@name = name
	end
	def bar
		puts "foo bar"
	end
end

foo = Foo.new("M Shahzad Tariq")

class << foo
	def say_hi
		puts "hi #{@name}"
	end
	def say_bye
		puts "bye #{@name}"
	end
end

foo.bar
foo.say_hi
foo.say_bye

