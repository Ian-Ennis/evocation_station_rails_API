class ImagesController < ApplicationController

    def index
        render json: Image.all
    end

    def show
        image = Image.find(params[:id])
        render json: image
    end

    def create
        image = Image.create!(image_params)
    end

    private

    def image_params
        params.permit(:user_id, :id, :image)
    end

end
