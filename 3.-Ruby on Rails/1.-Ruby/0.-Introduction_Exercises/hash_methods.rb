my_hash = {
  :first_name => "Jose",
  :last_name => "Cuevas",
  :major => "CM",
  :university => "UW"
}

my_hash.delete(:first_name)

puts my_hash
puts my_hash.empty?

puts my_hash.has_key?(:first_name)
puts my_hash.has_key?(:university)

puts my_hash.has_value?("UW")
