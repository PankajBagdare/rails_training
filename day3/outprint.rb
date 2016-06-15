#!/usr/bin/env ruby 
require './calculate.rb'

class Printer 

  def initialize
    @tax_list=[]
    @final_price_list=[]
  end

  def final(item)
    tax = item.gettaxes
    line = item.getline
    price = item.getprice
    final_price = price + tax
    @tax_list.push(tax)
    splited = line.split
    len = splited.length
    for i in 0...len-2
      print "#{splited[i]} "
    end
    if (final_price!=0.0)
    print ": #{final_price.round(2)}\n"
    end
    @final_price_list.push(price)
  end

  def print_total
    sum,taxsum = 0,0
    @tax_list.each do |tax|
      taxsum = taxsum +tax
    end
    @final_price_list.each do |rs|
      sum = sum +rs
    end
    puts "Sales tax : #{taxsum.round(2)}"
    puts "Total : #{(sum+taxsum).round(2)}"
  end
  
end
