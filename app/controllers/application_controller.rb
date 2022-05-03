class ApplicationController < ActionController::Base
    include ActionController::Cookies
    skip_before_action :verify_authenticity_token

    rescue_from ActiveRecord::RecordInvalid, with: :record_invalid
    rescue_from ActiveRecord::RecordNotFound, with: :record_not_found

    private 

    def record_invalid(invalid)
        render json: {error: invalid.record.errors.full_messages}, status: :unprocessasble_entity
    end

    def current_user
        puts "*** In current_user ***"
        puts params
        puts session[:user_id]
        user = User.find_by_id!(session[:user_id])
        puts "*** current_user user: #{user}"
    end

end
