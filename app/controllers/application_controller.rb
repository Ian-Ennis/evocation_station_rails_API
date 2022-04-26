class ApplicationController < ActionController::Base
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
