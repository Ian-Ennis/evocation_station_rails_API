class ApplicationController < ActionController::Base
    skip_before_action :verify_authenticity_token
    # before_action :authenticate_user
    include ActionController::Cookies
    rescue_from ActiveRecord::RecordInvalid, with: :record_invalid
    rescue_from ActiveRecord::RecordNotFound, with: :record_not_found

    private 

    # def authenticate_user 
    #     render json: {error: "Not authorized"}, status: :unauthorized unless current_user 
    # end

    def record_invalid(invalid)
        render json: {error: invalid.record.errors.full_messages}, status: :unprocessasble_entity
    end

    def current_user
        puts "*** In current_user ***"
        User.find_by_id(session[:user_id])
    end

end
