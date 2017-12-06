feature "Testing Infrastructure" do
  scenario "testing homepage displaying information" do
    visit('/')
    expect(page).to have_content "Testing infrastructure working!"
  end
end
