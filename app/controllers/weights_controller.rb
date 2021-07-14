class WeightsController < ApplicationController

  def new
    @weight = Weight.new
  end

  def create
    @weight = Weight.new(weight_params)
    if @weight.save
      redirect_to action: 'index'
    else
      render :new
    end
  end

  private
  def weight_params
    params.require(:weight).permit(:weight, :date).merge(user_id: current_user.id)
  end
end
