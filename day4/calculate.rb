#!/usr/bin/env ruby -w
require './itemclass'

class Calculator < Item
  
  @include=["music CD","perfume"]
  @exclude=["book","chocolate bar","headache pills","chocolate"]

  def calculate(item)
    category = item.getcategory
    tax = calculate_tax(item)
    item.settaxes(tax)
    return item
  end

  def calculate_tax(item)
    
    import_tax=0
    sales_tax=0
    name =item.getname
    final_tax=0
    price = item.getprice.to_f
    category = item.getcategory

    if ["music CD","perfume"].include? name
      sales_tax = (price/10).round(2)
      import_tax = (price/20).round(2)
    end  
    if ["book","chocolate bar","headache pills","chocolate"].include? name
      import_tax = (price/20).round(2)
    end
    if (category.eql?("imported"))
      final_tax = sales_tax + import_tax 
    else
      final_tax = sales_tax
    end
 
    return final_tax
  end
    
end

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