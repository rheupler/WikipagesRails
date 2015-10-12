require 'rails_helper'

describe 'the add a country process' do
  it 'adds a new country' do
    visit countries_path
    click_link 'New Country'
    fill_in 'Name', :with => 'Canada'
    click_on 'Create Country'
    expect(page).to have_content 'countries'
  end

  it 'gives error when no name is entered' do
    visit new_country_path
    click_on "Create Country"
    expect(page).to have_content("Name can't be blank")
  end
end
