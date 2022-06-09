class NewevocationsController < ApplicationController

    def index 
        puts "*** in index, NEWEVOCATIONS"
        render json: Newevocation.all
    end

    def show
        puts "in show, NEWEVOCATIONS"
        puts params
        evocation = Newevocation.find(params[:id])
        render json: evocation
    end

    def create 
        puts "*** in create, NEWEVOCATIONS"
        evocation = Newevocation.create!(evocation_params)
        puts evocation
        render json: evocation
    end

    def destroy
        puts "**** in NEWevocations destroy"
        evocation = Newevocation.find(params[:id])
        evocation.destroy
    end

    private

    def evocation_params
        params.permit(:user_id, :id, :text, :image, :audio)
    end
    
end
