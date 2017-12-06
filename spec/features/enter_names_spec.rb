feature "Enter names" do

  scenario "letting players fill in their names in a form and submit" do
    sign_in_and_play
    expect(page).to have_content "James vs. Lan"
  end
end
