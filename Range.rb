class Range
	def eachOdd
		self.each do |r|
			yield(r) if r.odd?
		end
	end

	def eachEven
		self.each do |r|
			yield(r) if r.even?
		end
	end
end

(0..100).eachOdd do |r|
	puts r
end

(0..100).eachEven do |r|
	puts r
end
