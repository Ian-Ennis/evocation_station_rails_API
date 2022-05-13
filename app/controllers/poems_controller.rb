class PoemsController < ApplicationController

    def index
        puts "*** in POEMS index"
        render json: Poem.all
    end

    def show
        puts "*** in POEMS show"
        poem = Poem.find(params[:id])
        render json: poem
    end

    def create
        puts "*** in POEMS create"
        poem = Poem.create!(poem_params)
    end



    private

    def poem_params
        puts "*** in POEMS params"
        params.permit(:id, :text)
    end

end
