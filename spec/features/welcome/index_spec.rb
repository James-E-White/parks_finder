require 'rails_helper'

RSpec.describe 'welcome page' do 
  it 'when i select Tennesse from the drop down menu, and click find parks, I see total of parks found' do 
    visit root_path
    select("Tennessee", from: 'state')
    click_button("Find Parks")
    expect(current_path).to eq(parks_path)

  end

  it 'list out name, directions, description, hours for each park' do 
    park = ParkFacade.find_park("TN")
    visit parks_path
    expect(page).to have_content(park[0].name)
    expect(page).to have_content(park[0].description)
    expect(page).to have_content(park[0].directions)
    expect(page).to have_content(park[0].name)
  end
end