require 'game'

describe Game do

  let (:player_1) { double(:player_1) }
  let (:player_2) { double(:player_2) }

  it "should let players receive an attack" do
    expect(player_1).to receive(:reduce_hp).with Player::DEFAULT_DAMAGE
    subject.attack(player_1)
  end
end
