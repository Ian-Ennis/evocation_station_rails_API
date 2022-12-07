class WritingsController < ApplicationController
    # skip_before_action :require_login, only: [:index]

    def index
        render json: Writing.all
    end

end
