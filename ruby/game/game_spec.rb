require_relative 'game'

describe GuessWord do
  let(:new_game) { GuessWord.new }

  it "resets guess count on initialization, prompts user 1 to enter word for user 2 to guess" do
    new_game.word_to_guess
    expect(new_game.word_to_guess).to eq @word
  end

  it "takes user input and checks guess to see if correct" do
    new_game.check_input(guess)
    expect(new_game.check_input(guess)).to eq @is_over
  end

  it "gives user hint on letter guesses" do
    new_game.hint(guess)
    expect(new_game.hint(guess)).to eq "Your word includes '#{letter}'!"
  end

  it "returns guesses user has left" do
    new_game.guesses_left
    expect(new_game.guesses_left).to eq @word.length - @guess_count
  end

  it "checks for repeat guesses" do
    new_game.check_repeat(guess)
    expect(new_game.check_repeat(guess)).to eq @guess_count
  end
end
