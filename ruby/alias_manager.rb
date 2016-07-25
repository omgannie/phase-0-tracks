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

  # loop thru arrays of names
  # if letter in name array is also included in vowels array
  # +1 to next letter of vowels array
  # otherwise, change all other letter to next letter in alphabet

  vowels = ["a", "e", "i", "o", "u"]

  last_name.each do |letter|
    if vowels.include?(letter)
      letter.replace(vowels.index[letter + 1])
    else
      letter.replace(letter.next)
    end
  end

  last_name
  # => last_name = ['u','i']

  #first_name
  # => first_name = ['e', 'o', 'o', 'o', 'i']
end

p alias_generator
