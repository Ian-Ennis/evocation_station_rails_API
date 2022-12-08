class PrebuiltevocationsController < ApplicationController
    skip_before_action :require_login, only: [:index]

    def index 
        @user = current_user
        @prebuiltevocations = @user.prebuiltevocations
        render json: @prebuiltevocations
    end

    def create 
        puts "*** PARAMS:"
        puts params
        evocation = Prebuiltevocation.create!(user_id: params[:user_id], text: params[:text], image: params[:image], audio: params[:audio])
        if evocation.valid?
            puts "*** evocation is valid"
            render json: evocation, status: :created
        else 
            puts "*** evocation is not valid"
            render json: {error: "New evocation could not be created"}, status: :not_acceptable
        end
    end

    # private

    # def evocation_params
    #     params.permit(:user_id, :id, :text, :image, :audio)
    # end
  
end
