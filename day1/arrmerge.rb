
arr1=[1,2,3,4,5,6]
arr2=[11,12,13,14,15,16]
arr3=[]

i=0

def printarr(*arr)
  arr.each do |arr|
    print "#{arr}"
    print "\s"
  end
end

for i in 0...arr1.length
  arr3[i]=arr1[i]
end

#while(arr1.each!='\0') do
# arr3[i]=arr1[i]
#  i=i+1
#end

printarr arr3
len=arr1.length()

for i in 0..arr2.length
  arr3[len+i]=arr2[i]
end
puts "Printing the array"
printarr arr3







