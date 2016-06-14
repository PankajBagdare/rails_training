#!/usr/bin/env ruby -w
require './inputread'

class Item

  ITEM_LIST = ["book","music CD","chocolate bar","headache pills","chocolate","perfume"]

  @@itemes=[]
  @@itemes_updated=[]

  def initialised(name,quantity,price,category,taxes,line)
    @category = category
    @name = name
    @quantity = quantity
    @price = price
    @tax = taxes
    @line=line
  end
  
  def getprice
    return @price
  end
  def setprice(price)
    @price= price
  end

  def settaxes(tax)
    @tax = tax
  end

  def gettaxes
    return @tax
  end

  def getname
    return @name
  end

  def setquantity(quantity)
    @quantity = quantity
  end

  def setname(name)
    @name = name
  end

  def setcategory(category)
    @category = category
  end

  def setline(line)
    @line = line
  end

  def getline
    return @line
  end

  def getcategory
    return @category
  end

  def push_items(item)
    @@itemes.push(item)
  end

  def push_updated_items(item)
    @@itemes_updated.push(item)
  end

  def return_items
    return @@itemes
  end

  def return_updated_items
    return @@itemes_updated
  end

end


