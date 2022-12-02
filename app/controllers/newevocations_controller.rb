class NewevocationsController < ApplicationController

    def index 
        render json: Newevocation.all
    end

    def show
        evocation = Newevocation.find(params[:id])
        render json: evocation
    end

    def create 
        evocation = Newevocation.create!(evocation_params)
        render json: evocation
    end

    def destroy
        evocation = Newevocation.find(params[:id])
        evocation.destroy
    end

    private

    def evocation_params
        params.permit(:user_id, :id, :text, :image, :audio)
    end
    
end
