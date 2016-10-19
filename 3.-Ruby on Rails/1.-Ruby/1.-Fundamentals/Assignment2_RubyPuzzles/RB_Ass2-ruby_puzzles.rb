# Create an array with the following values: 3,5,1,2,7,9,8,13,25,32. Print the sum of all numbers in the array. Also have the function return an array that only include numbers that are greater than 10 (E.g. when you pass the array above, it should return an array with the values of 13,25,32 - hint: use reject or find_all method)
# arr = [3,5,1,2,7,9,8,13,25,32]
# puts arr.inject {|sum, i| sum + i }
# newArr = arr.find_all {|i| i > 10}
# puts newArr


#  Create an array with the following values: John, KB, Oliver, Cory, Matthew, Christopher. Shuffle the array and print the name of each person. Have the program also return an array with names that are longer than 5 characters.
# arr = ["John", "KB", "Oliver", "Cory", "Matthew", "Christopher"]
# puts "Shuffled array"
# puts arr.shuffle
# puts
# puts "Names with more than 5 letters"
# puts arr.find_all { |i| i.length > 5}


#  Create an array that contains all 26 letters in the alphabet (this array must have 26 values). Shuffle the array and display the last letter of the array. Have it also display the first letter of the array. If the first letter in the array is a vowel, have it display a message
# arr = [*("a".."z")]
# vowels = ["a", "e", "i", "o", "u"]
# arr.shuffle!
# first = arr[0]
# last = arr[arr.length - 1]
#
# puts first + last
# if vowels.include?(first)
#   puts "The first is a vowel"
# end


#  Generate an array with 10 random numbers between 55-100.
# randArr = []
# for i in 1..10
#   val = 55 + rand(45)
#   randArr.push(val)
# end
# puts randArr


#  Generate an array with 10 random numbers between 55-100 and have it be sorted (showing the smallest number in the beginning). Display all the numbers in the arrays. Next, display the minimum value in the array as well as the maximum value.
# randArr = []
# for i in 1..10
#   val = 55 + rand(45)
#   randArr.push(val)
# end
# randArr.sort!
# print randArr
# min = randArr[0]
# max = randArr[randArr.length - 1]
# puts "The minimum is #{min} and the maximum is #{max}"


#  Create a random string that is 5 characters long (hint: (65+rand(26)).chr returns a random character)
# charArr = []
# for i in 1..5
#   character = (65 + rand(26)).chr
#   charArr.push(character)
# end
# puts charArr


#  Generate an array with 10 random strings that are each 5 characters long
# strArr = []
# for i in 1..5
#   string = ""
#   for i in 1..5
#     character = (65 + rand(26)).chr
#     string += character
#   end
#   strArr.push(string)
# end
# puts strArr
