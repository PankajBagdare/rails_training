
user_input = [1,5,4,6,5,4,4,7,5,5,4,5,2,6]

hash = Hash.new(0)

user_input.each do |element|
  hash[element] +=1
end

puts hash
