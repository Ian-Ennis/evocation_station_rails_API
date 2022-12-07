class ApplicationController < ActionController::API
  before_action :require_login

  def encode_token(payload)
    JWT.encode(payload, 'irkdhwusixedhfrowmopsqwj08317840291')
  end

  def auth_header
    request.headers['Authorization']
  end

  def decoded_token
    if auth_header
      puts "-> auth header works"
      token = auth_header.split(' ')[1]
      begin
        JWT.decode(token, 'irkdhwusixedhfrowmopsqwj08317840291', true, algorithm: 'HS256')
      rescue JWT::DecodeError
        nil
      end
    end
  end

  def current_user
    if decoded_token
      puts "-> decoded token is valid"
      user_id = decoded_token[0]['user_id']
      @user = User.find_by(id: user_id)
    else 
      puts "-> decoded token invalid"
    end
  end

  def logged_in?
    !!current_user
  end

  def require_login
    render json: {message: 'Please Login'}, status: :unauthorized unless logged_in?
   end

end