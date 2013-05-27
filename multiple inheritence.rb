

module Being
	attr_accessor :name
	attr_accessor :age
	attr_accessor :height
	attr_accessor :weight 
end

module Living
	include Being 
	attr_accessor :kingdom
	attr_accessor :sex
end

module Animal
	include Living
	attr_accessor :legs
end

module Mammal
	include Animal 
	attr_accessor :feeding_period	
end

module Oviparos
	include Animal
	attr_accessor :eggs_frequency
end

class Human
	include Mammal
	attr_accessor :education
	def to_s
		"Name: #{name} Age: #{age} Height: #{height} Weight: #{weight} Kingdom: #{kingdom} Legs: #{legs} Sex: #{sex} Education: #{education}"
	end
end

class Bat
	include Mammal
	include Oviparos
	def to_s
		"Name: #{name} Age: #{age} Height: #{height} Weight: #{weight} Kingdom: #{kingdom} Legs: #{legs} Sex: #{sex} Eggs laying frequency: #{eggs_frequency} Feeding period: #{feeding_period}"
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

bat = Bat.new
bat.name = "burrrrr"
bat.age = 23
bat.height = "6 feet"
bat.weight = "72kg"
bat.kingdom = "Animal"
bat.legs = 2
bat.sex = "Male"
bat.eggs_frequency = 2
bat.feeding_period = '3 months'

puts bat.to_s
    
p Human.ancestors
