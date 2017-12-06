feature "Hit point" do
  
  scenario 'players can see their names and hitpoints' do
    sign_in_and_play
    expect(page).to have_content("James: 100")
  end
end
