class DishesController < ApplicationController
    before_action :set_menu, only: %i[ show edit update destroy ]
  
    # GET /menus/new
    def new
      @menus=Menu.all
      @dish = Dish.new
    end
  
    # POST /menus or /menus.json
    def create
      @dish = Dish.new(dish_params)

      #chec if is better to do int in the controller ypep has to be

      #create a scope in the db to get the total before inserting the values
      #based on the new creted object to get onlt thar part of the menu
      #use the include method to avoid n+1 problems

      #add a section to return json erros based on the testing

        #try to crate a method below to be executed in a more beuatifll way
#error section

      

      if true #@dish. first letter= "E" get all the menu items and sum the prices
          
      else
          
      end
  
      respond_to do |format|
        if @dish.save
          format.html { redirect_to root, notice: "Menu was successfully created." }
          format.json { render :show, status: :created }
        else
          format.html { render :new, status: :unprocessable_entity }
          format.json { render json: @menu.errors, status: :unprocessable_entity }
        end
      end
    end
  

  
    private
      # Use callbacks to share common setup or constraints between actions.
      def set_menu
        @menu = Menu.find(params[:id])
      end
  
      # Only allow a list of trusted parameters through.
      def menu_params
        params.require(:dish).permit(:name, :price, :menu)
      end
end
