#!/usr/bin/env ruby -w
require './itemclass'

class Calculator
  
  def initialize
    @include=["music CD","perfume","Music",]
    @exclude=["book","chocolate bar","headache pills","chocolate"]
    @items_update=[]
  end

  def calculate(items)
    items.each do |item|
      category = item.getcategory
      tax = calculate_tax(item)
      item.settaxes(tax)
      @items_update.push(item)
    end
    return @items_update
  end

  def calculate_tax(item)
    import_tax=0
    sales_tax=0
    final_tax=0
    name =item.getname
    price = item.getprice.to_f
    category = item.getcategory
    if @include.include? name
      sales_tax = (price/10).round(2)
      import_tax = (price/20).round(2)
    end  
    if @exclude.include? name
      import_tax = (price/20).round(2)
    end
    if category == "imported"
      final_tax = sales_tax + import_tax 
    else
      final_tax = sales_tax
    end
    return final_tax
  end
end
