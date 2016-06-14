#!/usr/bin/env ruby -w
require './itemclass'

class Inputreader

  def reader(input)
    
    name=""
    array_items=[]   
    input.each_line do |line|
      array_items << line  
    end

    array_items.each_with_index do |line,i|
      splited = line.split
      quantity = splited.first.to_i
      price = splited.last.to_f
      Item::ITEM_LIST.each do |item|
        if line.include?(item)
          name = item
          break
        end     
      end
      item = Item.new
      item.setname(name)
      item.setquantity(quantity)
      item.setprice(price)
      item.setline(array_items[i])
     
      if splited.include?("imported")
        item.setcategory("imported")
      else
        item.setcategory("Not imported")
      end
      Item.new.push_items(item)
    end
    items=Item.new.return_items
    return items
  end

end