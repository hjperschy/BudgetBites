class HomeController < ApplicationController
  def index
    @restaurants = Style.where(nil)
    @restaurants = @restaurants.filter_by_style(:TypeofFood).filter_by_price(:Price)
  end
end
