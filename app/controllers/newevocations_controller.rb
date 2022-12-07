class NewevocationsController < ApplicationController
    # skip_before_action :require_login, only: [:index, :create]

    def index
        puts "we're in index"
        @user = current_user
        @newevocations = @user.newevocations
        render json: @newevocations
    end

    def create 
        evocation = Newevocation.create!(user_id: params[:user_id], text: params[:text], image: params[:image], audio: params[:audio])
        if evocation.valid?
            render json: evocation, status: :created
        else 
            render json: {error: "New evocation could not be created"}, status: :unprocessable_entity
        end
    end

    # def destroy
    #     evocation = Newevocation.find(params[:id])
    #     evocation.destroy
    #     head :no_content
    # end

    # private

    # def evocation_params
    #     params.permit(:user_id, :id, :text, :image, :audio)
    # end
    
end
