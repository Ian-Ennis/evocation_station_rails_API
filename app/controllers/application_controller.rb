class ApplicationController < ActionController::Base
    include ActionController::Cookies
    skip_before_action :verify_authenticity_token
    before_action :authorize_user #this is a filter
    skip_before_action :authorize_user, only: [:index, :show, :create, :update, :destroy] # for all index methods; relocate to respective controllers as needed
    rescue_from ActiveRecord::RecordInvalid, with: :record_invalid
    rescue_from ActiveRecord::RecordNotFound, with: :record_not_found

    helper_method :current_user
    
    def current_user
        puts "*** in current_user, APP"
        @_current_user ||= session[:current_user] &&
        User.find_by(id: session[:current_user])
        puts @_current_user
    end

    def authorize_user
        puts "*** in authorize_user, APP"  
        puts session
        puts session[:current_user]
        return render json: { error: "Not authorized" }, status: :unauthorized unless session.include? :current_user
    end

    private

    def record_invalid(invalid)
        puts "*** in record_invalid, APP"
        render json: {error: invalid.record.errors.full_messages}, status: :unprocessasble_entity
    end

    def record_not_found(e)
        puts "*** in record_not_found, APP"
        render json: {error: e.record.errors.full_messages}, status: :not_found
    end 

end
