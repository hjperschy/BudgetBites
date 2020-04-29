class HomeController < ApplicationController
  def index
    @restaurants = Style.all
    if params[:Price] && params[:TypeofFood]
      high = 9999
      low = 0
      if params[:Price] == "$"
        high = 10
        low = 0
      elsif params[:Price] == "$$"
        high = 20
        low = 11
      elsif params[:Price] == "$$$"
        high = 9999
        low = 21
      end
      if params[:TypeofFood] == "None" && params[:Price] == "None"
        @restaurants == Style.all
      elsif params[:TypeofFood] == "None" && params[:Price] != "None"
        @restaurants = @restaurants.filter_by_price(high, low)
      elsif params[:Price] == "None" && params[:TypeofFood] != "None"
        @restaurants = @restaurants.filter_by_style(params[:TypeofFood])
      else
        @restaurants = @restaurants.filter_by_style(params[:TypeofFood]).filter_by_price(high, low)
      end
    end
  end
end