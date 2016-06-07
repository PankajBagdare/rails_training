
ary=[5,6,8,12,1,3,13]
 arr = ary.map { |x| x + x }

#=>

#def twis
#    self + self
#end
  
#ary.map(&:twis)

arr.each do |arr|
  print "#{arr}"
  print "\s"
end  

