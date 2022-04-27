class UsersController < ApplicationController

    def show
        if current_user
            render json: current_user, status: :ok
        else
            render json: "No current session stored", status: :unauthorized
        end
    end

    def create
        user = User.create!(user_params)
        if user.valid?
            puts "***User is Valid***"
            session[:user_id] = user.id # this is the piece that logs a user in and keeps track of users info in subsequent requests.
            render json: user, status: :ok
        else
            render json: user.errors.full_messages, status: :unprocessable_entity
        end
    end

    def destroy
        user = User.find(params[:id])
        user.destroy
        head :no_content
        puts "***User session has been destroyed***"
    rescue ActiveRecord::RecordNotFound => error
        render json: {error: error.message}, status: :not_found 
    end

    private

    def user_params
        params.permit(:username, :password, :password_confirmation)
    end

end
