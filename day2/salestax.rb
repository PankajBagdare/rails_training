require 'io/console'
$sales_tax_list=[]
$final_price_list=[]
$total_sales_tax = 0 
$total_price = 0

def calculate_price(line)
   splited_input = line.split
   price = splited_input.last
   newprice = price.to_f

   if line.include?("music"||"perfume")
     sales_tax = newprice/10
   end
   if line.include?("book"||"chocolate"||"piils")
     import_tax = newprice/20
   end
   if line.include?("imported")
     @sales_tax = sales_tax + import_tax
   else
     @sales_tax = sales_tax
   end
   @final_price = newprice + @sales_tax
    $sales_tax_list.push($sales_tax)
   return @final_price, @sales_tax
end 

def output(line)
  splited = line.split
  calculate_price(line)
  len = splited.length
  for i in 1...len
    print "#{splited[i]}"
  end
  print " : #{@final_price} \n"
  $final_price_list.push(@final_price)

end

def compute_total_and_print()
  $final_price_list.each do |element|     
    $total_price = $total_price + element
  end
  $sales_tax_list.each do |element|
    $total_sales_tax = $total_sales_tax + element
  end
  puts "Sales Tax : #{$total_sales_tax}"
  puts "Total : #{total_price}"
end

# Main program starts from here

#puts "Enter the details of what is purchased"

input = File.open('input1.txt').read

input.each_line do |line| 
  output(line)
end

compute_total_and_print

