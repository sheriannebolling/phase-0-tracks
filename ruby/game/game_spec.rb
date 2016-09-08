require_relative 'game'

describe Game do 

let(:game_1) {Game.new}

	it "splits a word into an array of letters" do
		expect(game_1.make_array("unicorn")).to eq (["u","n","i","c","o","r","n"])
	end

	it "makes array of underscores matching length of word entered" do
		expect(game_1.make_blank_array("unicorn")).to eq ([" _ "," _ "," _ "," _ "," _ "," _ "," _ "])
	end

	it "changes letter if letter guessed matches letter in word" do
		expect(game_1.match("c")).to eq ([" _ ", " _ ", " _ ", "c", " _ ", " _ ", " _ "])
	end

end