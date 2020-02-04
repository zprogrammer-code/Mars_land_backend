class MarsEstatesController < ApplicationController
    def index
        estates = MarsEstate.all
        render json: estates
    end
end
