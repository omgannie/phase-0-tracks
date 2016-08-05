# word-guessing game
class GuessWord
  attr_reader :guess_count, :is_over
  attr_accessor :already_guessed

  def initialize
    puts "Initializing guess word game..."
    @guess_count = 0
    @already_guessed = []
    @is_over = false
  end

# method 1 - accept user 2 input
# to check if guess is correct
  def check_input(guess, word)
    @guess_count += 1
    if guess == word
      @is_over = true
    else
      @is_over = false
      @already_guessed << guess
    end
  end

# method 2 - player receives feedback on current state of word
# produce letter hints if guess for letter hint is right
  def hint(guess, word)
    array1 = guess.split(//)
    array2 = word.split(//)

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

  # method 3 - return number of guesses left
  def guesses_left(word)
    word.length - @guess_count
  end

# method 4 - feedback for repeat guesses
  def check_repeat(guess)
    if @already_guessed.include?(guess) && @already_guessed.count(guess) > 1
      @guess_count += 0
      p "You have already guessed this word. You have #{@guess_count} guesses left."
    end
  end

end
