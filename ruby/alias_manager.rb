# Release 0
# Method that accepts spy's real name and creates a fake name
# 1. Swap first and last name
# 2. Change all of the vowels to the next vowel in 'aeiou'
# 3. All of the consonants would change to the next letter in the alphabet

def alias_generator
  def swap_name(name)
    name = name.downcase.split(' ').reverse!.join(' ').chars.to_a
    # name
    # => name = ['o', 'h', ' ', 'a', 'n', 'n', 'i', 'e']
  end

  # loop thru arrays of letters in name
  # if letter in name array is also included in vowels array
  # +1 to next letter of vowels array

  def swap_vowels(name)
    vowels = ["a", "e", "i", "o", "u"]

    #name.select { |letter| letter.include?(vowels) }.each { |letter| letter = vowels[letter + 1] }
    i = 0
    while i < name.length
      if vowels.include?(name[i])
        new_letter = vowels.index(name[i])
      else
        name[i].next
      end
      i += 1
    end
    name.join(' ')
    # => name = ["u", "i", " ", "e", "o", "o", "o", "i"]
  end

  def swap_letters(name)
    name.each do |letter|
      if letter == "z"
        letter == "a"
      else
        letter.next
      end
    end

    name.join(' ')
  end

  # user interface
  user_complete = false

  while user_complete == false
    puts "Initializing alias generator..."
    puts "What is your full name? Type 'quit' to exit."
    name = gets.chomp

    if name == "quit" || ""
      user_complete = true
      spy_list
      break
    else


  puts "Your new name is..."
  p swap_letters(name)

  end

end

p alias_generator
