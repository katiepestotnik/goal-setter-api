class GoalsController < ApplicationController
    def index
        goals = Goal.all
        render json: {status: 200, goals:goals}
    end
    def show
        goal = Goal.find(params[:id])
        render json: {goal:goal, updates: goal.updates}
    end
    def create
        goal = Goal.new(goal_params)
        if goal.save
            render(status: 201, json: {goal: goal})
        else
            render(status: 422, json: {goal:goal, errors:goal.errors})
        end
    end
    def update
        goal = Goal.find(params[:id])
        goal.update(goal_params)
        render(status: 200, json: {goal:goal})
    end
    def destroy
        goal =Goal.destroy(params[:id])
        render(status: 204)
    end
    private
    def goal_params
        params.require(:goal).permit(:name, :start_date, :goal_completion_date, :goal_description)
    end
end