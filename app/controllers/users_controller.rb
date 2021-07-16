class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @weights = @user.weights
  end
end
