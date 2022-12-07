class SoundsController < ApplicationController

    def index
        render json: Sound.all
    end

end
