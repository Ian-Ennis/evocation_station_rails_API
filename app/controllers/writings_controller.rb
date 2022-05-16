class WritingsController < ApplicationController

    def index
        puts "*** in WRITINGS index"
        render json: Writing.all
    end

    def show
        puts "*** in WRITINGS show"
        writing = Writing.find(params[:id])
        render json: writing
    end

    def create
        puts "*** in WRITINGS create"
        writing = Writing.create!(writing_params)
    end

    private

    def writing_params
        params.permit(:id, :text)
    end
end
