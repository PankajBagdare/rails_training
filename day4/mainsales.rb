#!/usr/bin/env ruby 
require './calculate'

#puts "Enter the details of purchased item"
#input_taken = gets.chomp
tempfile = File.new("input2.txt")
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
