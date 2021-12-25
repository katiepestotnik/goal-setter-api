class UpdatesController < ApplicationController
    def index
        updates = Update.all
        render json: {status: 200, updates: updates}
        end
    def show
        render json: Update.find(params[:id])
    end
end