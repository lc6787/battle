require './lib/battle'

feature "infrastructure", type: :feature do
  it "dispays welcome greeting" do
    visit '/'

    expect(page).to have_content 'Welcome to Battle!'
  end
end

feature "user submits player name", type: :feature do
  it "creates new player" do
    visit '/'
      within("form") do
        fill_in 'player_1', with: 'John Doe'
        fill_in 'player_2', with: 'Don Johe'
      end
      click_button 'Enter'
      expect(page).to have_content 'Player 1 is: John Doe. Player 2 is: Don Johe.'
  end
end


#   within("#session") do
#   fill_in 'Email', with: 'user@example.com'
#   fill_in 'Password', with: 'password'
#   end

# visit '/users/new'
#       within("form") do
#         fill_in 'First name', with: 'john'