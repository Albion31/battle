def sign_in_and_play
  visit('/')
  fill_in("player_1", with: "James")
  fill_in("player_2", with: "Lan")
  click_on("Submit")
end
