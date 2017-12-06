require 'player'

describe Player do
  subject(:player) { described_class.new("James") }
  it "should return the player's name" do
    expect(subject.name).to eq "James"
  end

  it "should return the player's hp" do
    expect(subject.hp).to eq 100
  end

  it "should reduce the players hp by 10" do
    expect{ subject.reduce_hp(10) }.to change{ subject.hp }.by(-10)
  end

end
