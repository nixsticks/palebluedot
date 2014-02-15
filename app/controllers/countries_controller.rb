class CountriesController < ApplicationController
  def show
    @country = Country.find(params[:id])
    @answers = @country.get_percentages
    gon.data = @answers.sort_by {|answer| answer["percentage"] }
    render layout: false
  end
end
