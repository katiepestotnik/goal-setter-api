class UsersController < ApplicationController
    def index
        users = User.all
        render json: {status: 200, users: users}
        end
        def show
            user = User.find(params[:id])
            render json:{user:user, updates: user.updates}
        end
end