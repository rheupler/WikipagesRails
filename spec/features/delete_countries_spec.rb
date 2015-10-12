require 'rails_helper'

describe 'the delete a country process' do
  it 'deletes a new country' do
    visit countries_path
    click_link 'New Country'
    fill_in 'Name', :with => 'Canada'
    click_on 'Create Country'
    click_on 'Delete'

    expect(page).to_not have_content("Canada")
  end
end
