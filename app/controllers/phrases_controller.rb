class PhrasesController < ApplicationController

    def index
        render json: Phrase.all
    end

    def show
        phrase = Phrase.find(params[:id])
        render json: phrase
    end

    def create
        phrase = Phrase.create!(phrase_params)
    end



    private

    def phrase_params
        params.permit(:id, :text)
    end
end
