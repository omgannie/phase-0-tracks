require_relative 'game'

describe GuessWord do
  let(:new_game) { GuessWord.new }

  it "resets guess count on initialization, prompts user 1 to enter word for user 2 to guess" do
    new_game.word_to_guess
    expect(new_game.word_to_guess).to eq ""
  end

  it "takes user input and checks guess to see if correct" do
    expect(new_game.check_input("guess")).to eq ["guess"]
  end

  it "gives user hint on letter guesses" do
    new_game.hint("")
    expect(new_game.hint("")).to eq []
  end

  it "returns guesses user has left" do
    new_game.guesses_left
    expect(new_game.guesses_left).to eq 0
  end

  it "checks for repeat guesses" do
    expect(new_game.check_repeat("guess")).to eq nil
  end
end
