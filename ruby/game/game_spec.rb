require_relative 'game'

describe Game do 

let(:game_1) {Game.new("unicorn", "o")}

	it "splits a word into an array of letters" do
		expect(game_1.make_array).to eq (["u","n","i","c","o","r","n"])
	end

	it "makes array of underscores matching length of word entered" do
		expect(game_1.make_blank_array).to eq ([" _ "," _ "," _ "," _ "," _ "," _ "," _ "])
	end

	it "changes letter if letter guessed matches letter in word" do
		expect(game_1.match).to eq ([" _ ", " _ ", " _ ", "c", " _ ", " _ ", " _ "])
	end

	it "counts guesses" do
		expect(game_1.count_down).to eq (6)
	end

	it "prints array" do
		game_1
		expect(game_1.print_update).to eq (" _ _ _ _ c _ _ ")
	end

	it "checks if player won" do
		expect(game_1.win).to be_falsey
	end

end