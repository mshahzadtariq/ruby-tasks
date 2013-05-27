

class Being
	attr_accessor :name
	attr_accessor :age
	attr_accessor :height
	attr_accessor :weight 
end

class Living < Being 
	attr_accessor :kingdom
	attr_accessor :sex
end

class Animal < Being
	attr_accessor :legs
end

class Mammal < Animal 
	attr_accessor :feeding_period	
end

class Oviparos < Animal
	attr_accessor :eggs_frequency
end

class Human < Mammal 
	attr_accessor :education
	def to_s
		"Name: #{name} Age: #{age} Height: #{height} Weight: #{weight} Kingdom: #{kingdom} Legs: #{legs} Sex: #{sex} Education: #{education}"
	end
end

    
shahzad = Human.new
shahzad.name = "M Shahzad Tariq"
shahzad.age = 23
shahzad.height = "6 feet"
shahzad.weight = "72kg"
shahzad.kingdom = "Animal"
shahzad.legs = 2
shahzad.sex = "Male"
shahzad.education = "BS"

puts shahzad.to_s
    
p Human.ancestors
