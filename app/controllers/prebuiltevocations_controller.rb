class PrebuiltevocationsController < ApplicationController

    def index 
        render json: Prebuiltevocation.all
    end

    def show
        evocation = Prebuiltevocation.find(params[:id])
        render json: evocation
    end

    def create 
        evocation = Prebuiltevocation.create!(evocation_params)
        render json: evocation
    end

    def destroy
        evocation = Prebuiltevocation.find(params[:id])
        evocation.destroy
    end

    private

    # def authorize
    #     puts "*** in authorize, EVOCATIONS"
    #     return render json: { error: "Not authorized" }, status: :unauthorized unless session.include? :current_user
    # end

    def evocation_params
        params.permit(:user_id, :id, :text, :image_url, :sound_url)
    end
  
end
