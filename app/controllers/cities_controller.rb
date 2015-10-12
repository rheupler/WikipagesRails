class CitiesController < ApplicationController
  def new
    @country = Country.find(params[:country_id])
    @city = @country.cities.new
    render :new
  end
end
