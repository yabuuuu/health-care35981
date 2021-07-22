class BodyfatGoalsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
  before_action :set_bodyfat_goal, only: [:edit, :update, :destroy]

  def new
    @bodyfat_goal = BodyfatGoal.new
  end

  def create
    @bodyfat_goal = BodyfatGoal.new(bodyfat_goal_params)
    if @bodyfat_goal.save
      redirect_to user_path(current_user)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @bodyfat_goal.update(bodyfat_goal_params)
      redirect_to user_path(current_user)
    else
      render :edit
    end
  end

  def destroy
    @bodyfat_goal.destroy
    redirect_to user_path(current_user)
  end

  private

  def bodyfat_goal_params
    params.require(:bodyfat_goal).permit(:goal, :period).merge(user_id: current_user.id)
  end

  def set_bodyfat_goal
    @bodyfat_goal = BodyfatGoal.find(params[:id])
  end
end
