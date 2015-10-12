require 'rails_helper'

describe 'the delete a city process' do
  before do
    @country = Country.create(:name => "Matilda")
    @city = City.create(:name => "Coolio", :country_id => @country.id)
  end

  it 'deletes a new city' do
    visit country_path(@country)
    click_on 'Delete'

    expect(page).to_not have_content("Coolio")
  end
end
