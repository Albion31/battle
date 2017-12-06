require 'player'

describe Player do

  it "should return the player's name" do
    player1 = Player.new("James")
    expect(player1.name).to eq "James"
  end

  it "should return the player's hp" do
    player1 = Player.new("James")
    expect(player1.hp).to eq 100
  end

end
