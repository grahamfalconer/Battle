require 'player'

describe Player do
  subject(:ash) { Player.new('Ash') }

  describe '#name' do
    it 'returns the name' do
      expect(ash.name).to eq 'Ash'
    end
  end

  describe '#hp' do
    it 'returns the hp' do
      expect(ash.hp).to eq 100
    end
  end

end