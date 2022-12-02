class WritingsController < ApplicationController

    def index
        @user = User.find(@user.id)
        @writings = @user.writings
        render json: @writings
    end

    def create
        writing = Writing.create!(user_id: params[:user_id], text: params[:text])
    end

    private

    def writing_params
        params.permit(:user_id, :id, :text)
    end
end
