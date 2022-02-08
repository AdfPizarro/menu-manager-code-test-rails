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

      respond_to do |format|
        if @dish.save
          format.html { redirect_to root_path, notice: "Menu was successfully created." }
          format.json { render :show, status: :created }
        else
          format.html { render :new, status: :unprocessable_entity }
          format.json { render json: @dish.errors, status: :unprocessable_entity }
        end
      end
    end
  
    private
      # Use callbacks to share common setup or constraints between actions.

      # Only allow a list of trusted parameters through.
      def dish_params
        params.require(:dish).permit(:name, :price, :menu_id)
      end
end
