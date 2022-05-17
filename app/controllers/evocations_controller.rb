class EvocationsController < ApplicationController

    def index 
        puts "*** in index, EVOCATIONS"
        render json: Evocation.all
    end

    def show
        puts "in show, EVOCATIONS"
        puts params
        evocation = Evocation.find(params[:id])
        render json: evocation
    end

    def create 
        puts "*** in create, EVOCATIONS"
        evocation = Evocation.create!(evocation_params)
        puts evocation
        render json: evocation
    end

    def destroy
        puts "**** in evocations destroy"
        evocation = Evocation.find(params[:id])
        evocation.destroy
    end

    private

    # def authorize
    #     puts "*** in authorize, EVOCATIONS"
    #     return render json: { error: "Not authorized" }, status: :unauthorized unless session.include? :current_user
    # end

    def evocation_params
        params.permit(:user_id, :id, :text, :image, :audio)
    end
end
