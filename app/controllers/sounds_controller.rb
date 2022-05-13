class SoundsController < ApplicationController

    def index
        puts "*** in POEMS index"
        render json: Sound.all
    end

    def show
        puts "*** in POEMS show"
        sound = Sound.find(params[:id])
        render json: sound
    end

    def create
        puts "*** in POEMS create"
        sound = Sound.create!(sound_params)
    end

    private

    def sound_params
        puts "*** in POEMS params"
        params.permit(:id, :audio)
    end

end
