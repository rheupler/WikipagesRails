require 'rails_helper'

describe 'the edit cities page' do
  before do
    @country = Country.create(:name => "Matilda")
    @city = City.create(:name => "Coolio", :country_id => @country.id)
  end
  it 'edits a city' do
    visit country_path(@country)
    click_link "Edit"
    fill_in 'Name', :with => "Not Coolio"
    click_on "Update City"
    expect(page).to have_content "Not Coolio"
  end

  it 'gives an error when no name is entered' do
    visit country_path(@country)
    click_link 'Edit'
    fill_in 'Name', :with => ''
    click_on 'Update City'
    expect(page).to have_content 'errors'
  end
end
