feature 'Attack player' do
  scenario 'A player can attack another player and reduce their hitpoints' do
    sign_in_and_play
    click_on "Attack P2"
    expect(page).to have_content("Player 2 has been attacked")
  end
end
