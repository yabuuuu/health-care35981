class WeightGoalsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
  before_action :set_weight_goal, only: [:edit, :update, :destroy]

  def new
    @weight_goal = WeightGoal.new
  end

  def create
    @weight_goal = WeightGoal.new(weight_goal_params)
    if @weight_goal.save
      redirect_to user_path(current_user)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @weight_goal.update(weight_goal_params)
      redirect_to user_path(current_user)
    else
      render :edit
    end
  end

  def destroy
    @weight_goal.destroy
    redirect_to user_path(current_user)
  end

  private

  def weight_goal_params
    params.require(:weight_goal).permit(:goal, :period).merge(user_id: current_user.id)
  end

  def set_weight_goal
    @weight_goal = WeightGoal.find(params[:id])
  end
end
