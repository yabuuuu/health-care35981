class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @weight = @user.weights
  end
end
