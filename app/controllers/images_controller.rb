class ImagesController < ApplicationController

    def index
        puts "*** in POEMS index"
        render json: Image.all
    end

    def show
        puts "*** in POEMS show"
        image = Image.find(params[:id])
        render json: image
    end

    def create
        puts "*** in POEMS create"
        image = Image.create!(image_params)
    end

    private

    def image_params
        puts "*** in POEMS params"
        params.permit(:user_id, :id, :image)
    end

end
