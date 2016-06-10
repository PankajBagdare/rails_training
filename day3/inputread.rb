#!/usr/bin/env ruby -w
require 'inputread'
require 'itemclass'
require 'calculate'
require 'outputprint'

$item_list= ["book","music CD","chocolate bar","headache pills"]
$name_list=[]
$price_list=[]
$quantity_list=[]
$category_list=[]

class Inputreader

  def reader(input)
    i=0
    input.each_line do |line|
      array_items[i] = line
      i += 1
    end
    array_items.each_index do |j|
      splited = array_items[j].split
      quantity = splited.first.to_i
      price = splited.last.to_f
      $itemlist.each do |item|
        if input.include?(item)
          name = item
          break
        end
      end
      $name_list.push(name)
      $quantity_list.push(quantity)
      $price_list.push(price)
      if splited.inclde?("imported")
        category = "imported"
      else
        category = "Not imported"
      end
      $category_list.push(category)
    end
  end

 end    



