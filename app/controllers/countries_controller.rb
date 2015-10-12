class CountriesController < ApplicationController
  def index
    @countries = Country.all
    render :index
  end

  def show
    @country = Country.find(params[:id])
    render :show
  end

  def new
    @country = Country.new
    render :new
  end

  def create
    @country = Country.new(country_params)
    if @country.save
      redirect_to countries_path
    else
      render :new
    end
  end

  def edit
    @country = Country.find(params[:id])
    render :edit
  end

  def update
    @country = Country.find(params[:id])
    if @country.update(country_params)
      redirect_to countries_path
    else
      render :edit
    end
  end

  def destroy
    @country = Country.find(params[:id])
    @country.destroy
    redirect_to countries_path
  end

  private
  def country_params
    params.require(:country).permit(:name, :image_url)
  end
end
