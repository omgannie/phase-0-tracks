# word-guessing game
class GuessWord
  attr_reader :guess_count, :is_over, :words
  attr_accessor :already_guessed

  def initialize
    puts "Initializing word to guess..."
    @words = ["hello", "butter", "fire", "picture", "cat", "table", "glass", "phone", "strawberry"]
    @word_to_guess = @words[5]
    @guess_count = 0
    @already_guessed = []
    @is_over = false
  end

# method 1 - randomize words
  def randomize
    @words.shuffle!
  end

# method 2 - accept user input
# to check if guess is correct
  def check_input(guess)
    @guess_count += 1
    if guess == @word_to_guess
      @is_over = true
    else
      @is_over = false
      @already_guessed << guess
    end
  end

# method 3 - player receives feedback on current state of word
# produce letter hints if guess for letter hint is right
  def hint(guess)
    guess.split('')

    guess.each do |letter|
      if @word_to_guess.include?(letter)
        p "Your word includes '#{letter}'!"
      end
    end

    guess.join('')
  end

end

# user interface
# input: a word
# output: attempts to guess the word

new_game = GuessWord.new
new_game.randomize

# loop to handle repeat guesses
# repeated guesses to not count against user

# congratulatory message if they win
# taunting method if lose

while !new_game.is_over
  puts "Guess the word!"
  guess = gets.chomp

  new_game.check_input(guess)
  new_game.hint(guess)

end

p "Congraulations on guessing the word!"
