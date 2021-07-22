class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @weights = @user.weights.order(start_time: :DESC)
    @weight_goal = @user.weight_goal
  end
end
