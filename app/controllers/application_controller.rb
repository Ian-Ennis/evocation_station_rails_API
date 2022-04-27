class ApplicationController < ActionController::Base
    skip_before_action :verify_authenticity_token
    
    include ActionController::Cookies
    rescue_from ActiveRecord::RecordInvalid, with: :record_invalid

    private 

    def record_invalid(invalid)
        render json: {error: invalid.record.errors.full_messages}, status: :unprocessasble_entity
    end

    def current_user
        User.find_by(id: session[:user_id])
    end

end
