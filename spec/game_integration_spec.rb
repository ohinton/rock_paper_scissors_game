require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_expections, false)

describe('the game play', {:type => :feature}) do
  it ('processes the user entries and returns who wins') do
    visit('/')
    fill_in('player_one_choice', :with => 'rock')
    fill_in('player_two_choice', :with => 'scissors')
    click_button('Play')
    expect(page).to have_content('Player One!')
  end
end
