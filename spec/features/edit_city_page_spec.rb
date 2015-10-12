require 'rails_helper'

describe 'the edit cities page' do
  it 'edits a city' do
    country = Country.create(:name => "Matilda")
    city = City.create(:name => "Coolio", :country_id => country.id)
    visit country_path(country)
    click_link "Edit"
    fill_in 'Name', :with => "Not Coolio"
    click_on "Update City"
    expect(page).to have_content "Not Coolio"
  end
end
