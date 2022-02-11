module Api::V1
  class ApiController < ApplicationController
    before_action :set_menu, only: %i[show edit update destroy]

    # GET /menus.json
    def index
      @menus = Menu.all.includes(:dishes)

      respond_to do |format|
        format.json { render json: @menus.as_json(include: [:dishes]) }
      end
    end
  end
end
