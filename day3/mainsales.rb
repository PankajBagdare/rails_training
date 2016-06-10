#!/usr/bin/env ruby -w
require 'inputread'
require 'itemclass'
require 'outputprint'
require 'calculate'
require 'itemclass'
require 'input.txt'

puts "Enter the details of purchased item"
input_taken = gets.chomp
tempfile = File.new("input.txt","w+")
tempfile.puts(input_taken)
input = tempfile.read

Inputreader.reader(input)

input.each_line do |line|
  item = Item.new
  item.insert_details(line)
  updated_item = Calculator.calculate(item)
  output(updated_item,line)
end