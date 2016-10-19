a = {:first_name => "Michael", :last_name => "Choi"}
b = {:first_name => "John", :last_name => "Supsupin"}
c = {:first_name => "KB", :last_name => "Tonel"}
d = {:first_name => "Jessie", :last_name => "De Leon"}
e = {:first_name => "Jaybee", :last_name => "Balog"}
names = [a, b, c, d, e]


puts "You got #{names.length} in the 'names' array!!!"


# i = 0
# while i < names.length do
#   puts "The name is '#{names[i][:first_name]} #{names[i][:last_name]}'"
#   i += 1
# end

# for i in 0...names.length
#   puts "The name is '#{names[i][:first_name]} #{names[i][:last_name]}'"
# end


names.each { |person|
  puts "The name is '#{person[:first_name]} #{person[:last_name]}'"
}
