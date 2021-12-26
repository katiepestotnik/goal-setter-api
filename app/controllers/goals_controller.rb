class GoalsController < ApplicationController
    def index
        goals = Goal.all
        render json: {status: 200, goals:goals}
    end
    def show
        goal = Goal.find(params[:id])
        render json: { status: 200, goal:goal, updates:goal.updates}
    end
    def create
        goal = Goal.new(goal_params)
        if goal.save
            render json: {status: 201,goal: goal}
        else
            render json: {status: 422, goal:goal, errors:goal.errors}
        end
    end
    def update
        goal = Goal.find(params[:id])
        goal.update(goal_params)
        render json: {status: 200, goal:goal}
    end
    def destroy
        goal =Goal.destroy(params[:id])
        render json: {status: 204}
    end
    private
    def goal_params
        params.require(:goal).permit(:name, :start_date, :goal_completion_date, :goal_description, :user_id, :update_id)
    end
end