# Given the following array:
nested_animals = [[:dog, :cat, :zebra], [:quokka, :unicorn, :bear]]

# Use an enumerable to:
# 1. Return an unnested (single layer) array of animals as strings
p nested_animals.flatten.map {|animal| animal.to_s}


# 2. Return an unnested array of animals with length >= 4
# animals = nested_animals.flat_map {|collection| collection.select do |animal| animal.length end }
# p animals


# 3. Return a hash where the keys are the animal, and the values are the length. ex: {dog: 3, cat: 3, zebra: 5 ... }

animals_by_letter_count = Hash.new(0)
nested_animals.map do |nest|
  nest.each{|animal| animals_by_letter_count[animal] += animal.length}
end
p animals_by_letter_count 