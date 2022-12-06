class ApplicationController < ActionController::API
    before_action :require_login
  
    def encode_token(payload)
      puts "*** in encode_token"
      # should store secret in env variable
      JWT.encode(payload, 'irkdhwusixedhfrowmopsqwj08317840291')
      puts "*** token should be encoded now"
    end
  
    def auth_header
      puts "*** in auth_header"
      # { Authorization: 'Bearer <token>' }
      puts "request headers:"
      puts request.headers['Authorization']
      request.headers['Authorization']
    end
  
    def decoded_token
      puts "*** in decoded token"
      if auth_header
        puts "*** yes to auth header"
        token = auth_header.split(' ')[1]
        # header: { 'Authorization': 'Bearer <token>' }
        begin
          JWT.decode(token, 'irkdhwusixedhfrowmopsqwj08317840291', true, algorithm: 'HS256')
          puts "*** token should have been decoded"
        rescue JWT::DecodeError
          nil
        end
      end
    end
  
    def current_user
      puts "*** in current_user"
      if decoded_token
        puts "*** yes to decoded token"
        user_id = decoded_token[0]['user_id']
        @user = User.find_by(id: user_id)
      else
        puts "*** no to decoded_token"
      end
    end
  
    def logged_in?
      puts "*** in logged_in"
      !!current_user
    end
  
    def require_login
      render json: {message: 'Please Login'}, status: :unauthorized unless logged_in?
     end
  
  end