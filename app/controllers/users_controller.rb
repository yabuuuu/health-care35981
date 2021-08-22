class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])

    @body_conditions = @user.body_conditions.order(data_content_id: :DESC)
    @weight_goal = @user.weight_goal
    @weights = @user.body_conditions.where(data_content_id: '2').order(start_time: :DESC)
    @bodyfat_goal = @user.bodyfat_goal
    @bodyfats = @user.body_conditions.where(data_content_id: '3').order(start_time: :DESC)
    @exercises = @user.body_conditions.where(data_content_id: '4').order(start_time: :DESC)
    @cals = @user.body_conditions.where(data_content_id: '5').order(start_time: :DESC)
    @sugars = @user.body_conditions.where(data_content_id: '6').order(start_time: :DESC)
    @others = @user.body_conditions.where(data_content_id: '7').order(start_time: :DESC)
  end
end
