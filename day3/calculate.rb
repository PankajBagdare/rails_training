#!/usr/bin/env ruby -w
require 'inputread'
require 'itemclass'

class Calculator < Item
  
  def initialize (sales_tax,import_tax)
    @sales_tax = sales_tax
    @import_tax = import_tax
  end

  def calculate(Item item)
     category = item.getcategory
     tax = calculate_tax(item)
     item.settaxes(tax)
     return item
  end

  def calculate_tax(item)
    sales_tax =calculate_sales_tax(item)
    import_tax = calculate_import_tax(item)
    total_tax = import_tax + sales_tax
    return total_tax
  end
  
  def calculate_sales_tax(item)
    price = item.getprice
    if item.category = inclusion
      sales_tax = (price/10).round(2)
    else
      sales_tax = 0
    end
    return sales_tax
  end

  def calculate_import_tax(item)
    price = item.getprice
    if item.category="imported"
      import_tax = (price/20).round(2)
    else
      import_tax = 0.0
    end
    return import_tax
  end

end
