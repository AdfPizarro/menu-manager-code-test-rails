class DishesController < ApplicationController
    before_action :set_menu, only: %i[ show edit update destroy ]
    before_action :validate_number, only: %i[ create ]
  
    # GET /menus/new
    def new
      @menus=Menu.all
      @dish = Dish.new
    end
  
    # POST /menus or /menus.json
    def create
      @dish = Dish.new(dish_params)
      @menus=Menu.all

      respond_to do |format|
        if @dish.save
          format.html { redirect_to root_path, notice: "Menu was successfully created." }
        else
          format.html { render :new, status: :unprocessable_entity }
        end
      end
    end
  
    private
      # Use callbacks to share common setup or constraints between actions.
      def set_menu
        @menu = Menu.find(params[:id])
      end
  
      def validate_number
        return "Error" unless params[:price].is_a? Numeric
      end

      # Only allow a list of trusted parameters through.
      def dish_params
        params.require(:dish).permit(:name, :price, :menu_id)
      end
end
