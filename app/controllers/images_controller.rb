class ImagesController < ApplicationController
    skip_before_action :require_login, only: [:index]

    def index
        render json: Image.all
    end

end
