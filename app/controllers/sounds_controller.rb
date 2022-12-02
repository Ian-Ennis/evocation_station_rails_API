class SoundsController < ApplicationController

    def index
        render json: Sound.all
    end

    def show
        sound = Sound.find(params[:id])
        render json: sound
    end

    def create
        sound = Sound.create!(sound_params)
    end

    private

    def sound_params
        params.permit(:id, :audio, :audio_name, :audio_url)
    end

end
