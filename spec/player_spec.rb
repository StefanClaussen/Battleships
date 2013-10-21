require 'player'


describe Player do
	let(:player) { Player.new 'Stefan', []}

	
	it 'has a name when created' do
		expect(player.name).to eq 'Stefan'
	end

	it 'has a board when created' do
		expect(player.board).to eq []
	end

	it 'knows when the player still has ships floating' do
		player = Player.new 'Stefan', ['s', 'x', ' ', 's', ' ']
		expect(player.has_ships_still_floating?).to be_true
	end

	it 'knows when the player still has ships floating' do
		player = Player.new 'Nadia', ['x', ' ', 'x', 'x']
		expect(player.has_ships_still_floating?).to be_false
	end
end