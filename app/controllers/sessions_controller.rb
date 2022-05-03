class SessionsController < ApplicationController

  def create
    puts "*** in sessions create"
    puts params
    user = User.find_by(username: params[:username])
    puts user
    if user&.authenticate(params[:password])
      puts "*** User exists and is authenticated"
      session[:user_id] = user.id
      puts session[:user_id]
      render json: user, status: :ok
    else
      render json: "Invalid Credentials", status: :unauthorized
    end
  end

  def destroy
    session.delete :user_id
  end

end
