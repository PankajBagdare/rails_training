#!/usr/bin/env ruby -w
require './inputread'

class Item
  def initialised(name,quantity,price,category,taxes)
    @@category = category
    @@name = name
    @@quantity = quantity
    @@price = price
    @@tax = taxes
  end
  def getprice
    return @@price
  end
  def insert_details(i)
    @@name = $name_list[i]
    @@quantity = $quantity_list[i]
    @@price = $price_list[i]
    @@category = $category_list[i]
    @@tax = 0.0
  end
  def settaxes(tax)
    @@tax = tax
  end
  def gettaxes
    return @@tax
  end
  def getname
    return @@name
  end
  def setcategory(category)
    @@category = category
  end
  def getcategory
    return @@category
  end
  def show_item_details
    print "#{@@name}, #{@@quantity}, #{@@price}, #{@@category}, #{@@tax}\n"
  end
end


