class EvocationsController < ApplicationController
    before_action :authorize
    # skip_before_action :authorize, only: [:index]

    def index 
        puts "*** in index, EVOCATIONS"
        render json: Evocation.all
    end

    def create 
        puts "*** in create, EVOCATIONS"
        evocation = Evocation.create!(evocation_params)
    end

    private 

    def authorize
        puts "*** in authorize, EVOCATIONS"
        return render json: { error: "Not authorized" }, status: :unauthorized unless session.include? :current_user
    end

    def evocation_params
        params.permit(:text)
    end
end