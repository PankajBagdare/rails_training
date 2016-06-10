#!/usr/bin/env ruby -w
require 'inputread'

class Item
  def initialised(name,quantity,price,category,taxes)
    @category = category
    @name = name
    @quantity = quantity
    @price = price
    @tax = taxes
  end
  def getcategory
    return @category
  end
  def getprice
    return @price
  end
  def insert_details(i)
    @category = category_list[i]
    @name = name_list[i]
    @quantity = quantity_list[i]
    @price = price_list[i]
    @tax = 0.0
    item_detail(@name,@quantity,@price,@category,@tax)
  end
  def item_details(name,quantity,price,category,tax)
    self.@name = name
    self.@category = category
    self.@quantity = quantity
    self.@price = price
    self.@tax = tax
  end 
  def settaxes(tax)
    self.@tax = tax
  end
  def gettaxes
    return @tax
  end
end
