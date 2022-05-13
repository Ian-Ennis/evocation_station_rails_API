class PoemsController < ApplicationController

    def index
        render json: Poem.all
    end

    def show
        poem = Poem.find(params[:id])
        render json: poem
    end

    def create
        poem = Poem.create!(poem_params)
    end



    private

    def poem_params
        params.permit(:id, :text)
    end

end
