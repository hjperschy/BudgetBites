class StylesController < ApplicationController
    def index
        @styles = Style.all
    end
    
    def show
        @style = Style.find(params[:id])
    end
    
    def new
        @style = Style.new
    end
    
    def create
        @style = Style.new(style_params)
        @style.user = current_user
        
        if @style.save
            redirect_to @style
        else
            render 'new'
        end
    end
    
    def edit
        @style = Style.find(params[:id])
    end
    
    def update
        @style = Style.find(params[:id])
        
        if @style.update(style_params)
            redirect_to @style
        else
            render 'edit'
        end
    end
    
    def destroy
        @style = Style.find(params[:id])
        @style.destroy
        redirect_to styles_path
    end
end

private
    def style_params
        params.require(:style).permit(:resturant, :styleType, :address, :db, :studentDiscount, :avgPrice)
    end