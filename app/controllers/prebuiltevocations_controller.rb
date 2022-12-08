class PrebuiltevocationsController < ApplicationController
    skip_before_action :require_login, only: [:index]

    def index 
        @user = current_user
        if (@user.prebuiltevocations)
            @prebuiltevocations = @user.prebuiltevocations
            render json: @prebuiltevocations
        else 
            head :no_content
        end
    end

    def create 
        evocation = Prebuiltevocation.create!(evocation_params)
        if evocation.valid?
            puts "*** evocation is valid"
            render json: evocation, status: :created
        else 
            puts "*** evocation is not valid"
            render json: {error: "New evocation could not be created"}, status: :unproccesable_entity
        end
    end

    def destroy
        puts "PARAMS:"
        puts params
        evocation = Prebuiltevocation.find(params[:id])
        evocation.destroy
        # head :no_content
        render json: {delete: "Evocation deleted"}, status: :ok
    end

    private

    def evocation_params
        params.permit(:user_id, :id, :writing, :image, :sound)
    end
  
end
