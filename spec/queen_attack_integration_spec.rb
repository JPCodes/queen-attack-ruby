require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the queen_attack case path', {:type => :feature}) do
  it('processes the user entry and returns whether the queen can attack') do
    visit('/')
    fill_in('queen_move', :with => '22')
    fill_in('enemy', :with => '44')
    click_button('Send')
    expect(page).to have_content('true')
  end
end
