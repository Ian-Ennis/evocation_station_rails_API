class PrebuiltevocationsController < ApplicationController
    # skip_before_action :require_login, only: [:index, :create]

    def index 
        render json: Prebuiltevocation.all
    end

    # def create 
    #     evocation = Prebuiltevocation.create!(evocation_params)
    #     render json: evocation
    # end

    # def destroy
    #     evocation = Prebuiltevocation.find(params[:id])
    #     evocation.destroy
    # end

    # private

    # def evocation_params
    #     params.permit(:user_id, :id, :text, :image_url, :sound_url)
    # end
  
end
