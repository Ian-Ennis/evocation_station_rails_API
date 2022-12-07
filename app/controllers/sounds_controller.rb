class SoundsController < ApplicationController
    skip_before_action :require_login, only: [:index]

    def index
        render json: Sound.all
    end

end
