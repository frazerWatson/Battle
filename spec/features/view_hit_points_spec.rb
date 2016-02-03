feature 'View hit points' do
  scenario 'viewing hit points' do
    visit('/')
    fill_in :player_1_name, with: 'p1'
    fill_in :player_2_name, with: 'p2'
    click_button 'Submit'
    expect(page).to have_content 'Player 2 Hit Points: 100'
  end
end