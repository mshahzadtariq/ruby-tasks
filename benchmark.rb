#!/usr/bin/env ruby
require 'benchmark'

Benchmark.bm do|b|
  b.report("+= ") do
    a = ""
    100_000.times { a += "." }
  end

  b.report("<< ") do
    a = ""
    100_000.times { a << "." }
  end
end
