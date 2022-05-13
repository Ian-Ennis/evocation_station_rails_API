class PhrasesController < ApplicationController

    def index
        puts "*** in PHRASES index"
        render json: Phrase.all
    end

    def show
        puts "*** in PHRASES show"
        phrase = Phrase.find(params[:id])
        render json: phrase
    end

    def create
        puts "*** in PHRASES create"
        phrase = Phrase.create!(phrase_params)
    end

    private

    def phrase_params
        params.permit(:id, :text)
    end
end
