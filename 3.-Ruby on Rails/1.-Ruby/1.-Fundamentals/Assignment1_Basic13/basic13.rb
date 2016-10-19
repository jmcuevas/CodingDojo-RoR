
# # 1.-Print 1-255
# puts "1.-Print 1-255"
# for i in 1..255
#   puts i
# end


# # 2.-Print odd numbers between 1-255
# puts "2.-Print odd numbers between 1-255"
# for i in 1..255
#   if i % 2 == 0 then
#     next
#   end
#   puts i
# end
#
# 1.upto(255) {|x| puts num}
# (1..255).step(2) {|x| puts num}


# # 3.-Print sum
# puts "3.-Print sum"
# sum = 0
# (1..255).each do |i|
#   sum += i
# end
# puts sum
#
# sum = 0
# (0..255).each{ |x| sum += x}
# puts sum

# # 4.-Iterating Trhough an array
# puts "4.-Iterating Trhough an array"
# a = [5,6,7,3,6,8,4,645,3,5,63,34,2,554,54]
# a.each {|i| print i, " "}


# # 5.-Find max
# puts "5.-Find max"
# b = [-5,-6,-7,-3,-6,-8,-4,-645,-3,-5,-63,-34,-2,-554,-54]
# puts b.max


# # 6.-Get Average
# puts "6.-Get Average"
# c = [1,2,3,]
# puts c.inject(100.00){ |sum,  i | (sum - i)*i }

# # 7.- Array with odd numbers
# d = []
# puts "7.- Array with odd numbers"
# (1..255).each { |x| d.push(x) if x % 2 != 0}
# print d


# 8.-Greater than y
puts "8.-Greater than y"
$y=34
e = [1,4,7,34,35]
puts e.select{ |x| x > y}.length
puts e.select{ |x| x > y}.size
puts e.select{ |x| x > y}.count


# # 9.-Square the values
puts "9.-Square the values"
y=34
f = [1,4,7,34,35]
puts f.map{ |x| x * x}


# 10.-Eliminate Negative numbers
puts "10.-Eliminate Negative numbers"
g = [1,-5,3,5,-7,7,34,65,-76,43,-65,7,-34]
puts g.map!{ |x| x < 0 ? 0 : x}
puts g.collect!{|i| (i < 0)? 0 : i}


# # 11.-Min, Max and Average
puts "11.-Min, Max and Average"
h = [2,23,44,56,43,6,23]
puts h.min
puts h.max
puts h.inject { | sum, i | (sum + i) }/h.count


# # 12.-Shifting the values in an Array
puts "12.-Shifting the values in an Array"
i = [13,54,32,3,5,3]
puts i.drop(1).push(0)


# 13.-Number to string
puts "13.-Number to string"
h = [1,-5,3,5,-7,7,34,65,-76,43,-65,7,-34]
puts h.map!{ |x| x < 0 ? "Dojo" : x}
