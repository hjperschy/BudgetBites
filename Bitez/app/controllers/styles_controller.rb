class StylesController < ApplicationController
    def new
    end
    def create
        render plain: params[:styles].inspect
    end
end
