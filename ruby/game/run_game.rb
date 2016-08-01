# user interface
# input: user 1 - a word
require_relative 'game'

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
