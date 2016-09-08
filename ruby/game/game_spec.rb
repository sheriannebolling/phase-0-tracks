require_relative 'game'

describe Game do 

let(:game_1) {Game.new}

	it "splits a word into an array of letters" do
		expect(game_1.make_array("unicorn")).to eq (["u","n","i","c","o","r","n"])
	end

end