class ApplicationController < ActionController::API
  before_action :require_login

  def encode_token(payload)
    # should store secret in env variable
    JWT.encode(payload, 'irkdhwusixedhfrowmopsqwj08317840291')
  end

  def auth_header
    puts "in auth header"
    # { Authorization: 'Bearer <token>' }
    puts "Authoridation headers:"
    puts request.headers['Authorization']
    request.headers['Authorization']
  end

  def decoded_token
    puts "in decoded_token"
    if auth_header
      puts "auth header is good"
      token = auth_header.split(' ')[1]
      puts "token:"
      puts token
      # header: { 'Authorization': 'Bearer <token>' }
      begin
        JWT.decode(token, 'irkdhwusixedhfrowmopsqwj08317840291', true, algorithm: 'HS256')
      rescue JWT::DecodeError
        nil
      end
    end
  end

  def current_user
    puts "in current_user"
    if decoded_token
      puts "decoded token is valid"
      user_id = decoded_token[0]['user_id']
      @user = User.find_by(id: user_id)
    else 
      puts "decoded token is no good"
    end
  end

  def logged_in?
    puts "*** in logged_in"
    !!current_user
  end

  def require_login
    puts "*** in require login"
    render json: {message: 'Please Login'}, status: :unauthorized unless logged_in?
   end

end