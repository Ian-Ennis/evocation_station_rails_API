class PrebuiltevocationsController < ApplicationController
    skip_before_action :require_login, only: [:index]

    def index 
        @user = current_user
        @prebuiltevocations = @user.prebuiltevocations
        render json: @prebuiltevocations
    end

    def create 
        evocation = Prebuiltevocation.create!(evocation_params)
        render json: evocation
    end

    private

    def evocation_params
        params.permit(:user_id, :id, :text, :image_url, :sound_url)
    end
  
end
