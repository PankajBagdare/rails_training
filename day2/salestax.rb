require 'io/console'
$sales_tax_list=[]
$final_price_list=[]
$total_sales_tax = 0 


# method to calculate price and tax

def calculate_price(line)
   splited_input = line.split
   price = splited_input.last
   newprice = price.to_f
   sales_tax=0
   import_tax=0
   if line.include?("music"||"perfume")
     sales_tax = (newprice/10).round(2)
   end
   if line.include?("book"||"chocolate"||"piils")
     import_tax = (newprice/20).round(2)
   end
   if line.include?("imported")
     @sales_tax = sales_tax + import_tax
   else
     @sales_tax = sales_tax
   end
   @final_price = newprice + @sales_tax
   @final_price=@final_price.round(2)
    $sales_tax_list.push(@sales_tax)
end 

# printing the output line by line

def output(line)
  splited = line.split
  calculate_price(line)
  len = splited.length
  for i in 0...len-2
    print "#{splited[i]} "
  end
  print ": #{@final_price} \n"
  $final_price_list.push(@final_price)
end

# to compute total and print

def compute_total_and_print()
  @total_price=0
  $final_price_list.each do |element|     
    @total_price = @total_price + element
  end
  @total_sales_tax=0
  $sales_tax_list.each do |element|
    @total_sales_tax = @total_sales_tax + element
  end
  puts "Sales Tax : #{@total_sales_tax.round(2)}"
  puts "Total : #{@total_price.round(2)}"
end


# Main program starts from here

# puts "Enter the details of what is purchased"
# user_enters = gets.chomp
# tempfile = File.new("input.txt","w")

# tempfile.puts(user_enters)
#  input = tempfile.read
puts "Enter any one name of file"
puts "input1.txt"
puts "input2.txt"
puts "input3.txt"
enter = gets.chomp
input = File.open(enter).read

input.each_line do |line| 
  output(line)
end

compute_total_and_print


