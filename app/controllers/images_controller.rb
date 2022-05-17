class ImagesController < ApplicationController

    def index
        puts "*** in IMAGES index"
        render json: Image.all
    end

    def show
        puts "*** in IMAGES show"
        image = Image.find(params[:id])
        render json: image
    end

    def create
        puts "*** in IMAGES create"
        image = Image.create!(image_params)
    end

    private

    def image_params
        puts "*** in IMAGES params"
        params.permit(:user_id, :id, :image)
    end

end
