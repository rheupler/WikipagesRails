class CitiesController < ApplicationController
  def new
    @country = Country.find(params[:country_id])
    @city = @country.cities.new
    render :new
  end

  def create
    @country = Country.find(params[:country_id])
    @city = @country.cities.new(city_params)
    if @city.save
      redirect_to country_path(@city.country)
    else
      render :new
    end
  end

  def edit
    @country = Country.find(params[:country_id])
    @city = City.find(params[:id])
    render :edit
  end

  def update
    @country = Country.find(params[:country_id])
    @city = City.find(params[:id])
    if @city.update(city_params)
      redirect_to country_path(@city.country)
    else
      render :edit
    end
  end

  def destroy
    @country = Country.find(params[:country_id])
    @city = City.find(params[:id])
    @city.destroy
    redirect_to country_path(@city.country)
  end

  private
    def city_params
      params.require(:city).permit(:name)
    end
end
