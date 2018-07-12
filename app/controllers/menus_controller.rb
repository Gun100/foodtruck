class MenusController < ApplicationController
    def index
        @truck = Truck.find(params[:truck_id])
        @menus = @truck.menus
        @menu = Menu.new
    end
    
    def create
        
        @truck = Truck.find(params[:truck_id])
        #@menus = @truck.menus
        # @menu = Menu.new(params.require(:menu).permit(:menu_name, :price ))
        @menu = Menu.new(params.require(:menu).permit(:menu_name, :price ))
        @menu.truck_id = params[:truck_id]
        @menu.save
        redirect_to truck_menus_path(@truck)
    end
    
    def update
    
    end
    
    def destroy
        @truck = Truck.find(params [:truck_id])
        @menu = @truck.menu
        @menu.destroy
        #redirect_to menu_path(@menu)
        
    end
    
end
