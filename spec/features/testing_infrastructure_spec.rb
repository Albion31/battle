feature "Testing Infrastructure" do
  # scenario "testing homepage displaying information" do
  #   visit('/')
  #   expect(page).to have_content "Testing infrastructure working!"
  # end

  scenario "letting players fill in their names in a form and submit" do
    visit('/')
    fill_in("player_1", with: "James")
    fill_in("player_2", with: "Lan")
    click_on("Submit")
    expect(page).to have_content "James vs. Lan"
  end

  scenario 'players can see their names and hitpoints' do
    visit('/')
    fill_in("player_1", with: "James")
    fill_in("player_2", with: "Lan")
    click_on("Submit")
    expect(page).to have_content("James: 100")
  end
end
