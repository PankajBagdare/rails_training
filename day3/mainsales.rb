#!/usr/bin/env ruby 
require './calculate'

#puts "Enter the details of purchased item"
puts "Enter any one file name from these options"
puts "input1.txt"
puts "input2.txt"
puts "input3.txt"
input_taken = gets.chomp
tempfile = File.new(input_taken)
#tempfile.puts(input_taken)
input = tempfile.read

inputreader = Inputreader.new
inputreader.reader(input)

outprint = Outputprint.new
i=0
input.each_line do |line|
  item = Item.new
  item.insert_details(i)

  updated_item = Calculator.new.calculate(item)
  outprint.out(updated_item,line)
  i += 1
end

outprint.print_total
