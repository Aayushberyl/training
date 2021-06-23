#!/usr/bin/env ruby
require 'csv'
cs = CSV.read('file.csv')
hash= cs.to_h
puts hash
hash.each_value{|v| print v ," "}
puts ()
puts hash.class