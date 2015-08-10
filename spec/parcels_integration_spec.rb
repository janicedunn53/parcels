require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the parcels path', {:type => :feature}) do
  it('calculates the volume of a parcel based on length, width, and depth') do
    visit('/')
    fill_in('length', :with => 3)
    fill_in('width', :with => 4)
    fill_in('depth', :with => 5)
    click_button('Evaluate')
    expect(page).to have_content(60)
  end

  it('calculates the cost to ship based on volume and speed of delivery and distance') do
    visit('/')
    fill_in('length', :with => 3)
    fill_in('width', :with => 4)
    fill_in('depth', :with => 5)
    fill_in('delivery_type', :with => "ground")
    fill_in('distance', :with => 10)
    click_button('Evaluate')
    expect(page).to have_content(60)
  end
end
