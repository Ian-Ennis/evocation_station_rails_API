class SessionsController < ApplicationController
  skip_before_action :authorize_user, only: [:create, :login, :logout]

  def login
    puts "*** in sessions create, SESSIONS"
      user = User.find_by(username: params[:username])
      puts user
      if user&.authenticate(params[:password])
          session[:current_user] = user.id
          puts session[:current_user]
          session[:login_attempts] = 0
          render json: user, status: :ok
          # redirect_to root_url
      else
        puts "*** no user or can't authenticate, SESSIONS"
          session[:login_attempts] ||= 0
          session[:login_attempts] += 1
          render json:{error:"Invalid Password and/or Username"},  status: :unauthorized
      end
  end 

  # def logout
  #   puts "*** in sessions logout, SESSIONS"
  #   puts session[:current_user]
  #     session.delete :current_user
  # end 
end