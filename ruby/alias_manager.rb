# Release 0
# Method that accepts spy's real name and creates a fake name
# 1. Swap first and last name
# 2. Change all of the vowels to the next vowel in 'aeiou'
# 3. All of the consonants would change to the next letter in the alphabet

def alias_generator
	puts "Initializing alias generator..."
  puts "What is your full name?"

  name = gets.downcase.split(' ').reverse!.join(' ').chars.to_a
  name
  # => name = ['o', 'h', ' ', 'a', 'n', 'n', 'i', 'e']

  # loop thru arrays of letters in name
  # if letter in name array is also included in vowels array
  # +1 to next letter of vowels array

  def swap_vowels(name)
    vowels = ["a", "e", "i", "o", "u"]

    #name.select { |letter| letter.include?(vowels) }.each { |letter| letter = vowels[letter + 1] }
    i = 0
    while i < name.length
      if name.include?(vowels)
        p vowels[i]
      #else
        #name.map! { |letter| letter.next }
      end
      i += 1
    end
    name
  end

  swap_vowels(name)

end

p alias_generator
