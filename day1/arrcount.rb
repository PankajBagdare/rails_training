
array =[1,5,4,6,5,4,4,7,5,5,4,5,2,6]

  hash = Hash.new(array)
  hash.each{|key| hash[key] += 1}
  #hash

 

hash.each do |key,value|
 print "#{value}:#{key}"
 print "\s"
end