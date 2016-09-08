require_relative 'game'

describe Game do 

let(:game_1) {Game.new("unicorn")}

	it "splits a word into an array of letters" do
		expect(game_1.make_array).to eq (["u","n","i","c","o","r","n"])
	end

	it "makes array of underscores matching length of word entered" do
		expect(game_1.make_blank_array).to eq ([" _ "," _ "," _ "," _ "," _ "," _ "," _ "])
	end

	it "changes letter if letter guessed matches letter in word" do
		expect(game_1.match("c")).to eq ([" _ ", " _ ", " _ ", "c", " _ ", " _ ", " _ "])
	end

	it "counts guesses" do
		expect(game_1.guess_count("c")).to eq (6)
	end


end