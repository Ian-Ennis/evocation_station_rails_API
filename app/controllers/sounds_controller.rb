class SoundsController < ApplicationController

    def index
        puts "*** in SOUNDS index"
        render json: Sound.all
    end

    def show
        puts "*** in SOUNDS show"
        sound = Sound.find(params[:id])
        render json: sound
    end

    def create
        puts "*** in SOUNDS create"
        sound = Sound.create!(sound_params)
    end

    private

    def sound_params
        puts "*** in SOUNDS params"
        params.permit(:id, :audio, :audio_name, :audio_url)
    end

end
