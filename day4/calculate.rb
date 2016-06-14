#!/usr/bin/env ruby -w
require './itemclass'

class Calculator < Item
  def initialize
    @include=["music CD","perfume"]
    @exclude=["book","chocolate bar","headache pills","chocolate"]
  end
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

    if @include.include? name
      sales_tax = (price/10).round(2)
      import_tax = (price/20).round(2)
    end  
    if @exclude.include? name
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
