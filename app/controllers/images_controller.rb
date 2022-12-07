class ImagesController < ApplicationController

    def index
        render json: Image.all
    end

end
