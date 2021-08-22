class BodyConditionsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
  before_action :set_body_condition, only: [:edit, :update, :destroy]

  def new
    @body_condition = BodyCondition.new
  end

  def create
    @body_condition = BodyCondition.new(body_condition_params)
    if @body_condition.save
      redirect_to user_path(current_user)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @body_condition.update(body_condition_params)
      redirect_to user_path(current_user)
    else
      render :edit
    end
  end

  def destroy
    @body_condition.destroy
    redirect_to user_path(current_user)
  end

  private
  def body_condition_params
    params.require(:body_condition).permit(:data_content_id, :body_data, :start_time).merge(user_id: current_user.id)
  end

  def set_body_condition
    @body_condition = BodyCondition.find(params[:id])
  end

end
