require 'rails_helper'

describe 'the edit countries page' do
  before do
    @country = Country.create(:name => "Matilda")
  end

  it 'edits a city' do
    visit countries_path
    click_link "Edit"
    fill_in 'Name', :with => "Not Matilda"
    click_on "Update Country"
    expect(page).to have_content "Not Matilda"
  end

  it 'gives an error when no name is entered' do
    visit countries_path
    click_link 'Edit'
    fill_in 'Name', :with => ''
    click_on 'Update Country'
    expect(page).to have_content 'errors'
  end
end
