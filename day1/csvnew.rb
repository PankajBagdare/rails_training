require 'csv'

file ='test.csv'
collum_data=[]

puts "printing the file csv"

CSV.foreach(file) do |row| 
  puts row.inspect
end

CSV.foreach(file) do |row|
  collum_data << row[0].to_i*row[1].to_i 
end



CSV.open('test,csv', "w") do |col|

  col << collum_data

end

CSV.foreach(file) do |row| 
  puts row.inspect
end
