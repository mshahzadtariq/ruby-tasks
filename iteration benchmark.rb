require 'benchmark'

Benchmark.bmbm do |b|
	
	
	b.report("Upto") do
		0.upto(10000000) do |i|
			i
		end
	end

	b.report("Downto") do
		10000000.downto(0) do |i|
			i
		end
	end
	b.report("Time") do
		10000000.times do |i|
			i
		end
	end
	b.report("Range") do 
		(0..10000000).each do |i|
			i
		end
	end

end
