class UsersController < ApplicationController
    skip_before_action :authorize_user, only: [:index, :create, :show, :destroy]

    def index 
        render json: User.all
    end 

    def create
        puts "*** in user create, USER"
        user = User.create!(user_params)
        session[:current_user] = user.id
        puts "############################"
        puts session[:current_user]
        render json: user, status: :created
    rescue ActiveRecord::RecordInvalid => invalid
        render json: { errors: invalid.record.errors }, status: :unprocessable_entity
    end 

    def show
        user = User.find(params[:id])
        render json: user
            # , include: :tickets
    end

    def destroy
        puts "*** in destroy, USER."
        puts "########################"
        puts session[:current_user]
        @_current_user = session[:current_user_id] = nil
        head :no_content
        puts "***User session has been destroyed***"
    rescue ActiveRecord::RecordNotFound => error
        render json: {error: error.message}, status: :not_found 
    end

    private

    def user_params
        params.permit(:user_id, :username, :password)
    end

end
