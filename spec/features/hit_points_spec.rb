feature "Hit points" do

  scenario 'players can see their names and hitpoints' do
    sign_in_and_play
    expect(page).to have_content("James: 100")
  end

  scenario 'A player can attack to reduce the other players hitpoints' do
    sign_in_and_play
    expect { click_on "Attack #{$player_1.name}" }.to change{ $player_1.hp }.by(-10)
  end
end
