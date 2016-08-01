# word-guessing game
class GuessWord
  attr_reader :guess_count, :is_over, :words
  attr_accessor :already_guessed

  def initialize
    puts "Initializing guess word game..."
    @word = ""
    @guess_count = 0
    @already_guessed = []
    @is_over = false
  end

# method 1 - user 1 enters word to guess
  def word_to_guess
    puts "User 1, please enter word to guess for user 2."
    @word = gets.chomp

    @word
  end

# method 2 - accept user 2 input
# to check if guess is correct
  def check_input(guess)
    @guess_count += 1
    if guess == @word
      @is_over = true
    else
      @is_over = false
      @already_guessed << guess
    end
  end

# method 3 - player receives feedback on current state of word
# produce letter hints if guess for letter hint is right
  def hint(guess)
    array1 = guess.chars.to_a
    array2 = @word.chars.to_a

    array1.each do |letter|
      if array2.include?(letter)
        unless array2.count(letter) > 1
          p "Your word includes '#{letter}'!"
        end
      elsif array1 & array2 == array2
        @is_over = true
        break
      end
    end
  end

  # method 4 - return number of guesses left
  def guesses_left
    @word.length - @guess_count
  end

# method 5 - feedback for repeat guesses
  def check_repeat(guess)
    if @already_guessed.include?(guess) && @already_guessed.count(guess) > 1
      @guess_count -= 1
      p "You have already guessed this word. You have #{guesses_left} guesses left."
    end
  end

end

# user interface
# input: user 1 - a word

new_game = GuessWord.new
word = new_game.word_to_guess

# input: user 2 - guesses

# loop to handle repeat guesses
# repeated guesses to not count against user
# with output: feedback based on attempts to guess the word

while !new_game.is_over
  puts "Guess the word!"
  guess = gets.chomp

  new_game.check_input(guess)
  new_game.hint(guess)
  new_game.guesses_left
  new_game.check_repeat(guess)

  if guess != word && (new_game.guesses_left == 0)
    p "You ran out of guesses! HAHA LOSER!"
    is_over = true
    break
  elsif guess == word && (new_game.guesses_left >= 0)
    p "Congraulations on guessing the word!"
    is_over = true
  end

end
