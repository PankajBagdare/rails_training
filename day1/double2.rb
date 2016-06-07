
arr=[5,'d','j',12,'h',3,'k',3]

for i in 0...arr.length
   if (arr[i].class==Fixnum)
      arr[i]= arr[i]*2
   end 
    
end

arr.each do |arr|
  print "#{arr}"
  print "\s"
end


