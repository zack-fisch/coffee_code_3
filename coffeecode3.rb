# Coffee and Code 3
# Step 4: combining arrays

numbers = ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A']
suits = ['spades', 'hearts', 'diamonds', 'clubs']

 deck = numbers.each {|x| puts [x + " " + suits[0..3].to_s]}

 puts

#Solutions
# 1
# numbers = ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A']
# suits = ['spades', 'hearts', 'diamonds', 'clubs']

# arr = []
# numbers.each do |number|
# 	suits.each do |suits|
# 		arr << [numbers, suits]
# 	end
# end

#Step 5: Find the longest word in an array 

def find_longest(arr)
	arr.max_by{|animal| animal.size}
end

p find_longest(%w(cow chicken sheep))

# Another way
# def find_longest
# 	animals = %w(cow chicken sheep)
# 	puts "Find the longest word"
# 	animals.sort_by!{|x| x.length}
# 	p animals.last
# end

#Step 6
# Array to Hash without clobbering
animals = [['dogs', 4], ["cats", 3], ['dogs', 7]]
# Convert animals to {dogs => 11, cats => 3}

hash = Hash.new(0)

animals.each do |animal , num|
	hash[animal] += num
end

puts hash
# the 0 in brackets is what sum starts at
#Note- .injeect is wicked. ex. (5..10).inject(0) {|sum, n| sum += n} returns 45
