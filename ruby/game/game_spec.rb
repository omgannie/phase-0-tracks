require_relative 'game'

describe GuessWord do
  let(:new_game) { GuessWord.new }

  it "resets game & generates random word on initialization" do
    expect(new_game.randomize).to eq "#{@word_to_guess}"
  end

  it "takes user input and checks guess to see if correct" do
    expect(new_game.check_input(guess)).to eq "#{@is_over}"
  end

  it "gives user hint on letter guesses" do
    expect(new_game.hint(guess)).to eq "Your word includes '#{letter}'!"
  end

end
