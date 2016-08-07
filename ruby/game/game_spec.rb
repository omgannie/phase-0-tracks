require_relative 'game'

describe GuessWord do
  let(:new_game) { GuessWord.new }

  it "resets guess count, is over & already guessed on initialization" do
    expect(new_game.guess_count).to eq 0
    expect(new_game.already_guessed).to eq []
    expect(new_game.is_over).to eq false
  end

  it "accepts both user inputs, checks to see if guess is correct" do
    new_game.check_input("the guess", "the word")
    expect(new_game.is_over).to eq false
  end

  it "accepts both user inputs, gives hint if guess includes a letter from the word" do
    new_game.hint("guess", "word")
    expect(new_game.is_over).to eq false
  end

  it "returns number of guesses left" do
    new_game.check_input("guess", "word")
    new_game.guesses_left("word")
    expect(new_game.guesses_left("word")).to eq 3
  end

  it "checks for repeated guesses and gives feedback" do
    new_game.check_input("guess", "word")
    new_game.check_input("hello", "word")
    new_game.check_repeat("hello")
    expect(new_game.guess_count).to eq 2
  end
end
