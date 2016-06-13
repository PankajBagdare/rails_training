#!/usr/bin/env ruby 
require './calculate.rb'

class Outputprint < Item
  @@tax_list=[]

  def out(item,line)
    tax = item.gettaxes
    splited = line.split
    len = splited.length
    for i in 0...len-2
      print "#{splited[i]} "
    end
    final_price = item.getprice + tax
    if (final_price!=0.0)
    print ": #{final_price.round(2)}\n"
    end
    @@tax_list.push(tax)
  end
  def print_total
    sum,taxsum = 0,0
    @@tax_list.each do |tax|
      taxsum= taxsum +tax
    end
    $price_list.each do |rs|
      sum = sum +rs
    end
  
    puts "Sales tax : #{taxsum.round(2)}"
    puts "Total : #{(sum+taxsum).round(2)}"
  end
end
