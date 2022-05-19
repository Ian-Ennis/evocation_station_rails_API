class PrebuiltevocationsController < ApplicationController

    def index 
        puts "*** in index, PREBUILTEVOCATIONS"
        render json: Prebuiltevocation.all
    end

    def show
        puts "in show, PREBUILTEVOCATIONS"
        puts params
        evocation = Prebuiltevocation.find(params[:id])
        render json: evocation
    end

    def create 
        puts "*** in create, PREBUILTEVOCATIONS"
        puts params
        evocation = Prebuiltevocation.create!(evocation_params)
        puts evocation
        render json: evocation
    end

    def destroy
        puts "**** in PREBUILTevocations destroy"
        evocation = Prebuiltevocation.find(params[:id])
        evocation.destroy
    end

    private

    # def authorize
    #     puts "*** in authorize, EVOCATIONS"
    #     return render json: { error: "Not authorized" }, status: :unauthorized unless session.include? :current_user
    # end

    def evocation_params
        params.permit(:user_id, :id, :text, :image_url)
    end
  
end
