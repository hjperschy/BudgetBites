class ItemsController < ApplicationController
    def create
        @style = Style.find(params[:style_id])
        @item = @style.items.create(item_params)
        redirect_to style_path(@style)
    end
    
    def destroy
        @style = Style.find(params[:style_id])
        @item = @style.items.find(params[:id])
        @item.destroy
        redirect_to style_path(@style)
    end
    
    private
        def item_params
            params.require(:item).permit(:name, :price)
        end
end