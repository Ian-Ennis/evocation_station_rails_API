class Api::V1::UsersController < ApplicationController
  skip_before_action :require_login, only: [:create]

  def profile
    render json: { user: current_user }, status: :accepted
  end

  def create
    @user = User.create!(user_params)
    
    if @user.valid?
      puts "*** user is valid"
      @token = encode_token({ user_id: @user.id })
      render json: { user: @user, jwt: @token }, status: :created
    else
      puts "*** user is not valid"
      render json: { error: 'failed to create user' }, status: :unprocessable_entity
    end
  end

  private

  def user_params
    params.permit(:username, :password)
  end
end 