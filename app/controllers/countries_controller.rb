class CountriesController < ApplicationController
  def index
    @countries = Country.all
    render "index.html.erb"
  end
  def show
    @courses = Course.where(country_id: params[:id])
    render "show.html.erb"
  end
end
