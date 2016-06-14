#!/usr/bin/env ruby -w
require './itemclass'
require './calculate'

$item_list= ["book","music CD","chocolate bar","headache pills","chocolate","perfume"]
$name_list=[]
$price_list=[]
$quantity_list=[]
$category_list=[]

class Inputreader

  def reader(input)
    i=0
    name=""
    array_items=[]
    input.each_line do |line|
      array_items[i] = line
      i += 1  
    end
    
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
      $name_list.push(name)

      $quantity_list.push(quantity)
      $price_list.push(price)
      if splited.include?("imported")
        $category_list.push("imported")
      else
        $category_list.push("Not imported")
      end
    end
  end
end