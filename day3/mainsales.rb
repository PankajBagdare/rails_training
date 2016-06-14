#!/usr/bin/env ruby 
require './outprint'

#puts "Enter the details of purchased item"
puts "Enter any one name of file from given below"
puts "input1.txt"
puts "input2.txt"
puts "input3.txt"
input_taken = gets.chomp
tempfile = File.new(input_taken)

input = tempfile.read

inputreader = Inputreader.new
outprint = Outputprint.new
itemes = inputreader.reader(input)

updated_items = Calculator.new.calculate(itemes)
updated_items.each do |updated_items|
  outprint.final(updated_items)
end

outprint.print_total
