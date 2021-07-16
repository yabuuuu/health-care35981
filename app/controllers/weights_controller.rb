class WeightsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]
  before_action :set_weight, only: [:edit, :update, :destroy]

  def new
    @weight = Weight.new
  end

  def create
    @weight = Weight.new(weight_params)
    if @weight.save
      redirect_to user_path(current_user)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @weight.update(weight_params)
      redirect_to user_path(current_user)
    else
      render :edit
    end
  end

  def destroy
    @weight.destroy
    redirect_to user_path(current_user)
  end

  private
  def weight_params
    params.require(:weight).permit(:weight, :start_time).merge(user_id: current_user.id)
  end

  def set_weight
    @weight = Weight.find(params[:id])
  end
end
