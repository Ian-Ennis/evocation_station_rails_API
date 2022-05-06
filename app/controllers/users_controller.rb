class UsersController < ApplicationController
    skip_before_action :authorize_user, only: [:create, :destroy]

    def create
        puts "*** in user create, USER"
        user = User.create!(user_params)
        session[:current_user] = user.id
        render json: user, status: :created
    rescue ActiveRecord::RecordInvalid => invalid
        render json: { errors: invalid.record.errors }, status: :unprocessable_entity
    end 

    def destroy
        puts "*** in destroy, USER."
        @_current_user = session[:current_user_id] = nil
        head :no_content
        puts "***User session has been destroyed***"
    rescue ActiveRecord::RecordNotFound => error
        render json: {error: error.message}, status: :not_found 
    end

    private

    def user_params
        params.permit(:username, :password)
    end

end
