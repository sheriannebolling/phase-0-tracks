require_relative 'game'

describe Game do 

let(:game_1) {Game.new("unicorn")}

	it "stores guesses in an array" do
		game_1.make_array
		game_1.make_blank_array
		game_1.match("u")
		expect(game_1.guesses).to eq (["u"])
	end

	it "splits a word into an array of letters" do
		expect(game_1.make_array).to eq (["u","n","i","c","o","r","n"])
	end

	it "makes array of underscores matching length of word entered" do
		expect(game_1.make_blank_array).to eq ([" _ "," _ "," _ "," _ "," _ "," _ "," _ "])
	end

	it "changes letter if letter guessed matches letter in word" do
		game_1.make_array
		game_1.make_blank_array
		expect(game_1.match("c")).to eq ([" _ ", " _ ", " _ ", "c", " _ ", " _ ", " _ "])
	end

	it "prints array" do
		game_1.make_array
		game_1.make_blank_array
		game_1.match("c")
		expect(game_1.print_update).to eq (" _  _  _ c _  _  _ ")
	end

	it "checks if player won" do
		game_1.make_array
		game_1.make_blank_array
		expect(game_1.win(0)).to be_falsey
	end

	it "checks if guess is a repeat" do
		game_1.make_array
		game_1.make_blank_array
		game_1.match("c")
		game_1.guesses
		game_1.match("c")
		expect(game_1.repeat).to be_truthy
	end

end