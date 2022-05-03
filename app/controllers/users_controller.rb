class UsersController < ApplicationController

    def create
        user = User.create!(user_params)
        if user.valid?
            puts "***User is Valid***"
            puts "user id is: #{user.id}"
            session[:user_id] = user.id # this is the piece that logs a user in and keeps track of users info in subsequent requests.
            puts "session user id below"
            puts session[:user_id]
            puts params
            puts session[:user_id]
            puts "---user create instance--- #{user.inspect}"
            userSearch = User.find_by_id!(session[:user_id])
            puts "user found instance: #{userSearch}"
            puts "user found instance: #{userSearch}"
            puts "user found instance: #{userSearch}"
            render json: user, status: :created
        else
            render json: user.errors.full_messages, status: :unprocessable_entity
        end
    end

  def show
    puts "^^^^^^^ in /me"
    puts "session user id: #{session[:user_id]}"
    user = User.find_by_id!(session[:user_id])

    if user
        puts "*** Current user exists ***"
        render json: user, status: :ok
    else
        puts "*** Current user does not exist ***"
        render json: "No one is logged in", status: :unauthorized
    end
end
    
    def destroy
        User.find(session[:user_id]).destroy
        session[:user_id] = nil
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
