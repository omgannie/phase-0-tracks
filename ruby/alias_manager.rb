# Release 0
# Method that accepts spy's real name and creates a fake name
# 1. Swap first and last name
# 2. Change all of the vowels to the next vowel in 'aeiou'
# 3. All of the consonants would change to the next letter in the alphabet

def alias_generator
	puts "Initializing alias generator..."
	puts "What is your full name?"

  full_name = gets.downcase.split(' ').reverse!

  # => full_name = last name, first name

  last_name = full_name[0].chars
  first_name = full_name[1].chars

  # => last_name = ['x', 'x', 'x', 'x']

  vowels = ["a", "e", "i", "o", "u"]

  last_name.each do |letter|
  	if letter == vowels[letter]
  		letter.replace(vowels[letter + 1])
  	else
  		letter.next
  	end
  end

  last_name
  # =>
end

p alias_generator
