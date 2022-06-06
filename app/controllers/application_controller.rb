class ApplicationController < ActionController::Base
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
    
    include ActionController::Cookies
    skip_before_action :verify_authenticity_token
    # before_action :authorize_user #this is a filter
    # skip_before_action :authorize_user, only: [:index, :show, :create, :update, :destroy] # for all index methods; relocate to respective controllers as needed

    helper_method :current_user
    # include SessionsHelper
    
    def current_user
        puts "*** in current_user, APP"
        User.find_by(id: session[:current_user])
    end

    def authorize_user
        puts "*** in authorize_user, APP"  
        return render json: { error: "Not Authorized" }, status: :unauthorized unless current_user
    end

    private

    def render_unprocessable_entity_response(invalid)
        render json: { errors: invalid.record.errors }, status: :unprocessable_entity
    end

    def render_not_found_response(invalid)
        render json: { errors: invalid }, status: :not_found
    end 

end
