#!/usr/bin/env ruby -w
require './itemclass'
require './calculate'

$item_list= ["book","music CD","chocolate bar","headache pills","chocolate","perfume"]

class Inputreader

  def reader(input)
    i=0
    name=""
    array_items=[]   
    input.each_line do |line|
      array_items[i] = line
      i += 1  
    end
    itemize(array_items)
  end

  def itemize(array_items)
    k=0
    array_items.each_index do |j|
      splited = array_items[j].split
      quantity = splited.first.to_i
      price = splited.last.to_f
      $item_list.each do |item|
        if array_items[j].include?(item)
          name = item
          break
        end     
      end
      item = Item.new
      item.setname(name)
      item.setquantity(quantity)
      item.setprice(price)
      item.setline(array_items[k])
      k += 1
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